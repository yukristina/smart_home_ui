import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartDeviceBox extends StatelessWidget {
  SmartDeviceBox(
      {Key? key,
      required this.smartDeviceName,
      required this.iconPath,
      required this.powerOn,
      required this.onChanged})
      : super(key: key);

  final String smartDeviceName;
  final String iconPath;
  final bool powerOn;
  void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          color: powerOn ? Colors.grey[900] : Colors.grey[400],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ICON
              Image.asset(
                iconPath,
                height: 45,
                color: powerOn ? Colors.white : Colors.black,
              ),

              // SMART DEVICE NAME + SWITCH

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      smartDeviceName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: powerOn ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                  Transform.rotate(
                      angle: pi / 2,
                      child: CupertinoSwitch(
                          value: powerOn, onChanged: (value) {}))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
