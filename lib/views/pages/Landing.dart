import 'package:bramha/consts/demo_data.dart';
import 'package:bramha/views/widgets/Medicine-Card.dart';
import 'package:bramha/views/widgets/Medicine-Card.dart';
import 'package:bramha/views/widgets/my_banner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

import 'package:bramha/main.dart';
import '../widgets/Footer.dart';
import '../widgets/doctor_profile.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:   ListView( children: [
        
        const SizedBox(height: 8),
        const MyBanner(),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Top doctors', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        )
        ,
        Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[

                Expanded(
                  child:ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: DemoData.doctorData.length,
                      itemBuilder: (_, index) {
                        print(DemoData.doctorData[index]!["name"]);
                        return DoctorProfile(name: DemoData.doctorData[index]!["name"].toString(), degree: DemoData.doctorData[index]!["degree"].toString(), );
                      }),
                ),
              ],
            ),
            
        ),

        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Top Medicines', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
        )
        ,
        Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                MedicineCard(),
                MedicineCard(),
                MedicineCard(),
                MedicineCard()
              ],)),
          SizedBox(height: 60,)

      ]),
    );
  }
}
