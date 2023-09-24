

import 'package:flutter/material.dart';

import '../models/data_model.dart';
import '../shared/components/car_features.dart';
import '../shared/components/specifications.dart';
import 'home_page.dart';

class CarDetails extends StatelessWidget {
  Data data;

  CarDetails({super.key, required this.data}); // get data from previous screen

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
            child: const Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.black,
            ),
          ),
          title: const Text(
            'Back',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w300),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.name!,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 25.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orangeAccent,
                      size: 22.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '${data.rating} (${data.reviews} reviews)',
                      style: TextStyle(fontSize: 15.0, color: Colors.black54),
                    )
                  ],
                ),
                Center(
                  child: Image(
                    image: AssetImage('${data.image}'),
                    height: 200.0,
                  ),
                ),
                const Text(
                  'Specifications',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Specification(
                        image: 'images/battery.png',
                        text1: 'Max_power',
                        text2: '${data.maxPower.toString()}hp'),
                    const SizedBox(
                      width: 15,
                    ),
                    Specification(
                        image: 'images/fuel.png',
                        text1: 'Fuel',
                        text2: '${data.fuel.toString()}km per litre'),
                    const SizedBox(
                      width: 15,
                    ),
                    Specification(
                        image: 'images/speedometer.png',
                        text1: 'Max_speed',
                        text2: '${data.maxSpeed.toString()}kph'),
                    const SizedBox(
                      width: 15,
                    ),
                    Specification(
                        image: 'images/warning.png',
                        text1: '0-60mph',
                        text2: '${data.warning.toString()} Ersec'),
                  ],
                ),
                const SizedBox(
                  height: 35.0,
                ),
                const Text(
                  'Car features',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20.0),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    CarFeatures(text1: 'Model', text2: data.name!),
                    CarFeatures(text1: 'Capacity', text2: data.capacity.toString()),
                    CarFeatures(text1: 'Color', text2: data.color!),
                    CarFeatures(text1: 'Fuel type', text2: data.fuelType!),
                    CarFeatures(
                        text1: 'Gear type',
                        text2: data!.gearType == true ? 'Automatic' : 'Manual'),
                  ],
                )
              ],
            ),
            ),
        );
   }
}
