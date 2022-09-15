library super_button;

import 'package:flutter/material.dart';

class SuperButton extends StatelessWidget {
  final Color outSideColor;
  final Color insideColor;
  final double outerSize, innerSize;
  final String buttonText;
  const SuperButton(
      {super.key,
      required this.outSideColor,
      required this.insideColor,
      required this.innerSize,
      required this.outerSize,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Center(
              child: Container(
                width: outerSize,
                height: outerSize,
                decoration: BoxDecoration(
                  color: outSideColor,
                  shape: BoxShape.circle,
                ),
                child: CircularProgressIndicator(
                  color: outSideColor,
                ),
              ),
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Container(
                width: innerSize,
                height: innerSize,
                decoration: BoxDecoration(
                  color: insideColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(buttonText),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
