import 'package:flutter/material.dart';

class CarFeatures extends StatelessWidget {
  String text1;
  String text2;

  CarFeatures({required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
            bottom: 10.0
        ),
        height: 45,
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xff5fad96)),
            borderRadius: BorderRadius.circular(5.0),
            color: const Color(0xffe1f5ec)
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$text1',
                  style: TextStyle(
                    fontSize: 19.0,

                  ),
                ),
                Text(
                    '$text2'
                ),
              ],
            ),
           ),
        );
    }
}
