import 'package:bramha/consts/image_constants.dart';
import 'package:flutter/material.dart';
class MedicineCard extends StatelessWidget {
  const MedicineCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(

      child: GestureDetector(
        onTap: () =>
        {
         debugPrint('Medicine clieked')
        },
        child: Card(
        child: Container(
            width: 150,
            height: 204,

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.white, ),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children:  [
              Image.asset(ImageConstants.MEDICINE_ICON, height: 100, width: 100,),
              const SizedBox(height: 20,),
              const Text('Basa Tulsi', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
              const Text('Price - \u{20B9} 79.00', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),)
            ],)
        ),
      )
    ),
    );
  }
}
