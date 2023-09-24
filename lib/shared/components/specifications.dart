import 'package:flutter/material.dart';

class Specification extends StatelessWidget {
  String ?image;
  String ?text1;
  String ?text2;
  Specification({required this.image,required this.text1,required this.text2, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
            border: Border.all(
                color: const Color(0xff5fad96)
            ),
            borderRadius: BorderRadius.circular(10.0),
            color: const Color(0xffe1f5ec)
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                    '$image'
                ),
                height: 25.0,
                color: Colors.grey[600],
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                '$text1',
                style: const TextStyle(
                    fontSize: 11.0
                ),
              ),
              Text(
                '$text2',
                style: TextStyle(
                    fontSize: 11.0,
                    color: Colors.grey[500]
                ),
              )
            ],
            ),
        );
    }
}
