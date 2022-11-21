import 'package:bramha/consts/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../consts/image_constants.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dr. Suman'),),
      body: Container(
        child: Center(
          child: ListView( children: [
            Image.asset(ImageConstants.DOCTOR_HEADER, height: 250, fit: BoxFit.cover,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Dr. Suman Bhuniya', style: TextStyle(fontSize: 24, fontFamily: 'Roboto', color: Color.fromRGBO(13,117,123, 1)),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('BAMS (Ayurved)', style: TextStyle(fontSize: 16, fontFamily: 'Roboto', color: Color.fromRGBO(13,117,123, 1)),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Text('Khanakul Rural Hospital', style: TextStyle(fontSize: 16, fontFamily: 'Roboto', color: Color.fromRGBO(13,117,123, 1)),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Row(children: [
                Image.asset(ImageConstants.CALL_ICON , height: 25.0, width: 25.0, ),
                SizedBox(width: 10,),
                Image.asset(ImageConstants.TEXT_CHAT_ICON, height: 25.0, width: 25.0, ),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 16.0),
              child: Text('Biography', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, fontFamily: 'Roboto', color: Color.fromRGBO(13,117,123, 1)),),
            ),
            Padding(
              padding: const EdgeInsets.all( 8.0),
              child: Text('Many of the other answers here show how you can dynamically create a Color from a hex string, like I did above. However, doing this means that the color cannot be a const. Ideally, you would assign your colors the way I explained in the first part of this answer, which is more efficient when instantiating colors a lot, which is usually the case for Flutter widgets.',
                style: TextStyle( fontSize: 16, fontFamily: 'Roboto', color: Color.fromRGBO(13,117,123, 1)),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 16.0),
              child: Text('Available', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, fontFamily: 'Roboto', color: Color.fromRGBO(13,117,123, 1)),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 16.0),
              child: Text('Today 11.00 AM -12.00 PM', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, fontFamily: 'Roboto', color: Color.fromRGBO(13,117,123, 1)),),
            ),
            Padding(
                padding: const EdgeInsets.all( 8.0),
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(13,117,123, 1)) ),
              child: Text('Book an appointment'),
              onPressed: () { },
                )
            ),
            Padding(
                padding: const EdgeInsets.all( 8.0),
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(13,117,123, 1)) ),
                  child: Text('Start Calling'),
                  onPressed: () { },
                )
            ),
          ])
        ),
      ),
    );
  }
}