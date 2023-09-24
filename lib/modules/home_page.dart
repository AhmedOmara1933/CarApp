

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/data_model.dart';
import '../shared/components/defaultCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _CarAppState();
}

class _CarAppState extends State<HomePage> {
  DataModel? datamodel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    datamodel = DataModel.fromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white60,
          centerTitle: true,
          title: Text(
            'Car Booking',
            style: GoogleFonts.abyssinicaSil(
                fontWeight: FontWeight.w400,
                fontSize: 25.0,
                color: Colors.black54),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Available cars for ride',
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      '${datamodel!.data!.length} cars found',
                      style: TextStyle(color: Colors.black54, fontSize: 20.0),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) =>
                            DefaultCard(data: datamodel!.data![index]),
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 20.0,
                        ),
                        itemCount: datamodel!.data!.length
                    ),
                  ],
                ),
              ),
            ),
            ),
       );
   }
}
