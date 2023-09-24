

import 'package:flutter/material.dart';

import '../../models/data_model.dart';
import '../../modules/CarDetails.dart';
import 'default_bottom.dart';

class DefaultCard extends StatefulWidget {
  Data data;
  DefaultCard({super.key, required this.data});
  @override
  State<DefaultCard> createState() => _DefaultCardState(data);
}

class _DefaultCardState extends State<DefaultCard> {
  bool isClicable = false;
  Data? data;
  _DefaultCardState(this.data);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 180.0,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(
            color: const Color(0xff5fad96),
          ),
          color:  Colors.white,
        ),
        child: Padding(
            padding: const EdgeInsets.only(
                top: 20.0,
                left: 15.0,
                right: 15.0,
                bottom: 10.0
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //tree texts
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ' ${data!.name}',
                          style: TextStyle(
                              fontSize: 21.0, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          '${data!.gearType==true?'Automatic':'Manual'}  |  ${data!.seats}  seats  |  ${data!.fuelType} ',
                          style: TextStyle(color: Colors.black45, fontSize: 16.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            Text(
                              '${data!.distance} m (${data!.time}  away)',
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //car images
                    Expanded(
                      child: Image(
                        image:  AssetImage('${data!.image}'),
                        height: 80.0,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    DefaultBottom(
                      text: 'Book later',
                      onTap: () {
                        setState(() {
                          isClicable = true;
                        });
                      },
                      isSelectedColor:
                      isClicable ? const Color(0xff008955) :  Colors.white,
                      isSelectedText: isClicable ? Colors.white : const Color(0xff008955),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    DefaultBottom(
                        text: 'Ride Now',
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) => CarDetails(
                              data: data!,
                            ) ,
                          )
                          );
                          setState(() {});
                          isClicable = false;
                        },
                        isSelectedColor:
                        !isClicable ? const Color(0xff008955) : Colors.white,
                        isSelectedText:
                        !isClicable ? Colors.white : const Color(0xff008955)),
                  ],
                )
              ],
            ),
            ),
        );
    }
}
