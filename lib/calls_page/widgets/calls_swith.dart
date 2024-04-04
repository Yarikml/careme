import 'package:careme24/calls_page/state_managers/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state_managers/state.dart';

class CallsSwith extends StatefulWidget {
  @override
  State<CallsSwith> createState() => _CallsSwithState();
}

class _CallsSwithState extends State<CallsSwith> {
  @override
  Widget build(BuildContext context) {
    final switchCubit = context.read<SwitchCubit>();

    return BlocBuilder<SwitchCubit, SwitchState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () => switchCubit.toggleSwitch(),
          child: Stack(
            children: [

              AnimatedContainer(
                duration: Duration(milliseconds: 300),
                width: MediaQuery.of(context).size.width - 23,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Color(0xffB3B3B3))),
                alignment: state == SwitchState.on
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff3384e2),
                      borderRadius: BorderRadius.circular(7)),
                  height: 29,
                  width: MediaQuery.of(context).size.width / 2 - 13,
                ),
              ),
                 Padding(
                       padding: const EdgeInsets.fromLTRB(60, 8, 60, 0),
                       child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center
                        ,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'От меня',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: state == SwitchState.off
                                    ? Colors.white
                                    : Color(0xffB3B3B3)),
                          ),
                           Text(
                            'Мне',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: state == SwitchState.off
                                    ? Color(0xffB3B3B3)
                                    : Colors.white),
                          ),
                        ],
                                     ),
                     ),
            ],
          ),
        );
      },
    );
  }
}
