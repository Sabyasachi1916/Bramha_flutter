import 'package:bramha/consts/image_constants.dart';
import 'package:bramha/views/pages/doctor_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorProfile extends StatelessWidget {
  final String name;
  final String degree;
  const DoctorProfile({Key? key, required this.name, required this.degree}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(

      child: GestureDetector(
        onTap: () =>
    {
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const DoctorDetails()),
        )
    },
    child:Card(
        child: Container(
          width: 150,
          height: 204,

          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.blue, ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children:  [
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(ImageConstants.DOCTOR_ICON, height: 100, width: 100,),
            ),
            SizedBox(height: 20,),
            Text(name, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
            Text(degree, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
          ],)
        ),
      ),
    ));
  }
}
