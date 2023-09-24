import 'package:flutter/material.dart';

class DefaultBottom extends StatelessWidget {
  String text;
  Color isSelectedColor;
  Color isSelectedText;
  VoidCallback ?onTap;

  DefaultBottom({super.key,required this.text,required this.isSelectedText,required this.onTap,required this.isSelectedColor});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
        child: GestureDetector(
            onTap:onTap,
            child: Container(
              height: 55.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Color(0xff5fad96),
                ),
                color: isSelectedColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical:15.0),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: isSelectedText,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0
                  ),
                ),
              ),
            ),
           ),
        );
    }
}
