import 'dart:developer';
import 'package:camera/camera.dart';
import 'package:careme24/preview_screen.dart';
import 'package:careme24/theme/app_decoration.dart';
import 'package:careme24/theme/app_style.dart';
import 'package:careme24/widgets/app_bar/appbar_image.dart';
import 'package:careme24/widgets/app_bar/custom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'core/utils/image_constant.dart';
import 'core/utils/size_utils.dart';
import 'main.dart';
import 'dart:io';

class CustomCameraScreen extends StatefulWidget {
  const CustomCameraScreen({Key? key}) : super(key: key);

  @override
  State<CustomCameraScreen> createState() => _CustomCameraScreenState();
}

class _CustomCameraScreenState extends State<CustomCameraScreen>
    with WidgetsBindingObserver {
  CameraController? controller;
  VideoPlayerController? videoController;

  File? _imageFile;
  File? _videoFile;

  // Initial values
  bool _isCameraInitialized = false;
  bool _isCameraPermissionGranted = false;
  bool _isRearCameraSelected = true;
  bool _isVideoCameraSelected = false;
  bool _isRecordingInProgress = false;
  double _minAvailableExposureOffset = 0.0;
  double _maxAvailableExposureOffset = 0.0;
  double _minAvailableZoom = 1.0;
  double _maxAvailableZoom = 1.0;

  // Current values
  double _currentZoomLevel = 1.0;
  double _currentExposureOffset = 0.0;
  FlashMode? _currentFlashMode = FlashMode.always;

  List<File> allFileList = [];

  final resolutionPresets = ResolutionPreset.values;

  ResolutionPreset currentResolutionPreset = ResolutionPreset.medium;

  getPermissionStatus() async {
    await Permission.camera.request();
    var status = await Permission.camera.status;

    if (status.isGranted) {
      log('Camera Permission: GRANTED');
      setState(() {
        _isCameraPermissionGranted = true;
      });
      // Set and initialize the new camera
      onNewCameraSelected(cameras[0]);
      refreshAlreadyCapturedImages();
    } else {
      log('Camera Permission: DENIED');
    }
  }

  refreshAlreadyCapturedImages() async {
    final directory = await getApplicationDocumentsDirectory();
    List<FileSystemEntity> fileList = await directory.list().toList();
    allFileList.clear();
    List<Map<int, dynamic>> fileNames = [];

    fileList.forEach((file) {
      if (file.path.contains('.jpg') || file.path.contains('.mp4')) {
        allFileList.add(File(file.path));

        String name = file.path.split('/').last.split('.').first;
        fileNames.add({0: int.parse(name), 1: file.path.split('/').last});
      }
    });

    if (fileNames.isNotEmpty) {
      final recentFile =
          fileNames.reduce((curr, next) => curr[0] > next[0] ? curr : next);
      String recentFileName = recentFile[1];
      if (recentFileName.contains('.mp4')) {
        _videoFile = File('${directory.path}/$recentFileName');
        _imageFile = null;
        _startVideoPlayer();
      } else {
        _imageFile = File('${directory.path}/$recentFileName');
        _videoFile = null;
      }

      setState(() {});
    }
  }

  Future<XFile?> takePicture() async {
    final CameraController? cameraController = controller;

    if (cameraController!.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return null;
    }

    try {
      XFile file = await cameraController.takePicture();
      return file;
    } on CameraException catch (e) {
      print('Error occured while taking picture: $e');
      return null;
    }
  }

  Future<void> _startVideoPlayer() async {
    if (_videoFile != null) {
      videoController = VideoPlayerController.file(_videoFile!);
      await videoController!.initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized,
        // even before the play button has been pressed.
        setState(() {});
      });
      await videoController!.setLooping(true);
      await videoController!.play();
    }
  }

  Future<void> startVideoRecording() async {
    final CameraController? cameraController = controller;

    if (controller!.value.isRecordingVideo) {
      // A recording has already started, do nothing.
      return;
    }

    try {
      await cameraController!.startVideoRecording();
      setState(() {
        _isRecordingInProgress = true;
        print(_isRecordingInProgress);
      });
    } on CameraException catch (e) {
      print('Error starting to record video: $e');
    }
  }

  Future<XFile?> stopVideoRecording() async {
    if (!controller!.value.isRecordingVideo) {
      // Recording is already is stopped state
      return null;
    }

    try {
      XFile file = await controller!.stopVideoRecording();
      setState(() {
        _isRecordingInProgress = false;
      });
      return file;
    } on CameraException catch (e) {
      print('Error stopping video recording: $e');
      return null;
    }
  }

  Future<void> pauseVideoRecording() async {
    if (!controller!.value.isRecordingVideo) {
      // Video recording is not in progress
      return;
    }

    try {
      await controller!.pauseVideoRecording();
    } on CameraException catch (e) {
      print('Error pausing video recording: $e');
    }
  }

  Future<void> resumeVideoRecording() async {
    if (!controller!.value.isRecordingVideo) {
      // No video recording was in progress
      return;
    }

    try {
      await controller!.resumeVideoRecording();
    } on CameraException catch (e) {
      print('Error resuming video recording: $e');
    }
  }

  void resetCameraValues() async {
    _currentZoomLevel = 1.0;
    _currentExposureOffset = 0.0;
  }

  void onNewCameraSelected(CameraDescription cameraDescription) async {
    final previousCameraController = controller;

    final CameraController cameraController = CameraController(
      cameraDescription,
      currentResolutionPreset,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    await previousCameraController?.dispose();

    resetCameraValues();

    if (mounted) {
      setState(() {
        controller = cameraController;
      });
    }

    // Update UI if controller updated
    cameraController.addListener(() {
      if (mounted) setState(() {});
    });

    try {
      await cameraController.initialize();
      await Future.wait([
        cameraController
            .getMinExposureOffset()
            .then((value) => _minAvailableExposureOffset = value),
        cameraController
            .getMaxExposureOffset()
            .then((value) => _maxAvailableExposureOffset = value),
        cameraController
            .getMaxZoomLevel()
            .then((value) => _maxAvailableZoom = value),
        cameraController
            .getMinZoomLevel()
            .then((value) => _minAvailableZoom = value),
      ]);

      _currentFlashMode = controller!.value.flashMode;
    } on CameraException catch (e) {
      print('Error initializing camera: $e');
    }

    if (mounted) {
      setState(() {
        _isCameraInitialized = controller!.value.isInitialized;
      });
    }
  }

  void onViewFinderTap(TapDownDetails details, BoxConstraints constraints) {
    if (controller == null) {
      return;
    }

    final offset = Offset(
      details.localPosition.dx / constraints.maxWidth,
      details.localPosition.dy / constraints.maxHeight,
    );
    controller!.setExposurePoint(offset);
    controller!.setFocusPoint(offset);
  }

  @override
  void initState() {
    // Hide the status bar in Android
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    getPermissionStatus();
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController? cameraController = controller;

    // App state changed before we got the chance to initialize.
    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      onNewCameraSelected(cameraController.description);
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    videoController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          height: 42,
          leadingWidth: 43,
          leading: AppbarImage(
              height: getVerticalSize(16),
              width: getHorizontalSize(11),
              svgPath: ImageConstant.imgArrowleft,
              margin: getMargin(left: 15,right: 15, top: 15, bottom: 15),
              onTap: () {
                dispose();
                Navigator.pop(context);
              }),
          centerTitle: true,
          actions: [
            _currentFlashMode == FlashMode.always
                ? InkWell(
                    onTap: () async {
                      setState(() {
                        _currentFlashMode = FlashMode.off;
                      });
                      await controller!.setFlashMode(
                        FlashMode.off,
                      );
                    },
                    child: Icon(
                      Icons.flash_on,
                      color: Colors.amber,
                    ),
                  )
                : InkWell(
                    onTap: () async {
                      setState(() {
                        _currentFlashMode = FlashMode.always;
                      });
                      await controller!.setFlashMode(
                        FlashMode.always,
                      );
                    },
                    child: Icon(
                      Icons.flash_off,
                      color: Colors.white,
                    ),
                  ),
          ],
        ),
        backgroundColor: Colors.black,
        body: _isCameraPermissionGranted
            ? _isCameraInitialized
                ?SingleChildScrollView( child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height/1.5,
                      child: CameraPreview(
                        controller!,
                        child: LayoutBuilder(builder:
                            (BuildContext context,
                                BoxConstraints constraints) {
                          return GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTapDown: (details) =>
                                onViewFinderTap(details, constraints),
                          );
                        }),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: _imageFile != null ||
                                      _videoFile != null
                                  ? () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              PreviewScreen(
                                            imageFile: _imageFile!,
                                            fileList: allFileList,
                                          ),
                                        ),
                                      );
                                    }
                                  : null,
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.circular(10.0),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                  image: _imageFile != null
                                      ? DecorationImage(
                                          image: FileImage(_imageFile!),
                                          fit: BoxFit.cover,
                                        )
                                      : null,
                                ),
                                child: videoController != null &&
                                        videoController!
                                            .value.isInitialized
                                    ? ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: AspectRatio(
                                          aspectRatio: videoController!
                                              .value.aspectRatio,
                                          child: VideoPlayer(
                                              videoController!),
                                        ),
                                      )
                                    : Container(),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                dispose();
                                Navigator.pop(context);
                              },
                              child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.all(0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadiusStyle
                                          .roundedBorder39),
                                  child: Container(
                                      height: 44,
                                      width: 44,
                                      decoration: AppDecoration
                                          .outlineRed90066
                                          .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .roundedBorder39),
                                      child: Column(
                                          mainAxisSize:
                                              MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("SOS",
                                                overflow: TextOverflow
                                                    .ellipsis,
                                                textAlign:
                                                    TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanBold16)
                                          ]))),
                            ),
                            InkWell(
                              onTap: _isVideoCameraSelected
                                  ? () async {
                                      if (_isRecordingInProgress) {
                                        XFile? rawVideo =
                                            await stopVideoRecording();
                                        File videoFile =
                                            File(rawVideo!.path);

                                        int currentUnix = DateTime.now()
                                            .millisecondsSinceEpoch;

                                        final directory =
                                            await getApplicationDocumentsDirectory();

                                        String fileFormat = videoFile
                                            .path
                                            .split('.')
                                            .last;

                                        _videoFile =
                                            await videoFile.copy(
                                          '${directory.path}/$currentUnix.$fileFormat',
                                        );

                                        _startVideoPlayer();
                                      } else {
                                        await startVideoRecording();
                                      }
                                    }
                                  : () async {
                                      XFile? rawImage =
                                          await takePicture();
                                      File imageFile =
                                          File(rawImage!.path);

                                      int currentUnix = DateTime.now()
                                          .millisecondsSinceEpoch;

                                      final directory =
                                          await getApplicationDocumentsDirectory();

                                      String fileFormat = imageFile.path
                                          .split('.')
                                          .last;

                                      print(fileFormat);

                                      await imageFile.copy(
                                        '${directory.path}/$currentUnix.$fileFormat',
                                      );

                                      refreshAlreadyCapturedImages();
                                    },
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: _isVideoCameraSelected
                                        ? Colors.white
                                        : Colors.white38,
                                    size: 70,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: _isVideoCameraSelected
                                        ? Colors.red
                                        : Colors.white,
                                    size: 60,
                                  ),
                                  _isVideoCameraSelected &&
                                          _isRecordingInProgress
                                      ? Icon(
                                          Icons.stop_rounded,
                                          color: Colors.white,
                                          size: 32,
                                        )
                                      : Container(),
                                ],
                              ),
                            ),
                            _isRecordingInProgress
                                ? controller!.value.isRecordingPaused
                                    ? Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                        size: 30,
                                      )
                                    : Icon(
                                        Icons.pause,
                                        color: Colors.white,
                                        size: 30,
                                      )
                                : Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                            InkWell(
                              onTap: _isRecordingInProgress
                                  ? () async {
                                      if (controller!
                                          .value.isRecordingPaused) {
                                        await resumeVideoRecording();
                                      } else {
                                        await pauseVideoRecording();
                                      }
                                    }
                                  : () {
                                      setState(() {
                                        _isCameraInitialized = false;
                                      });
                                      onNewCameraSelected(cameras[
                                          _isRearCameraSelected
                                              ? 1
                                              : 0]);
                                      setState(() {
                                        _isRearCameraSelected =
                                            !_isRearCameraSelected;
                                      });
                                    },
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.black38,
                                    size: 60,
                                  ),
                                  Icon(
                                    Icons.cached,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 4.0,
                                    right: 2.0,
                                  ),
                                  child: TextButton(
                                    onPressed: _isRecordingInProgress
                                        ? null
                                        : () {
                                            if (_isVideoCameraSelected) {
                                              setState(() {
                                                _isVideoCameraSelected =
                                                    false;
                                              });
                                            }
                                          },
                                    style: TextButton.styleFrom(
                                      primary: _isVideoCameraSelected
                                          ? Colors.black54
                                          : Colors.black,
                                      backgroundColor:
                                          _isVideoCameraSelected
                                              ? Colors.white30
                                              : Colors.white,
                                    ),
                                    child: Text('ФОТО'),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 2.0, right: 4.0),
                                  child: TextButton(
                                    onPressed: () {
                                      if (!_isVideoCameraSelected) {
                                        setState(() {
                                          _isVideoCameraSelected = true;
                                        });
                                      }
                                    },
                                    style: TextButton.styleFrom(
                                      primary: _isVideoCameraSelected
                                          ? Colors.black
                                          : Colors.black54,
                                      backgroundColor:
                                          _isVideoCameraSelected
                                              ? Colors.white
                                              : Colors.white30,
                                    ),
                                    child: Text('ВИДЕО'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ))
                : Center(
                    child: Text(
                      'LOADING',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
            : Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(),
                      SizedBox(height: 24),
                      ElevatedButton(
                        onPressed: () {
                          getPermissionStatus();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Дать разрешение на использоваине камеры',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
