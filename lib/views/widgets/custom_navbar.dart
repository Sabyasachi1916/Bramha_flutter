import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 20, end: 20),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 35,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: Colors.amber,
              backgroundImage: NetworkImage(
                  'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/profile-photos-4.jpg'),
              radius: 30.0,
            ),
          ),
          const SizedBox(width: 20),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
            Text(
              'Vijay',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Khanakul',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            )
          ]),
          const Spacer(),
          Image.asset(
            'assets/images/bell.png',
            width: 30,
            height: 30,
          )
        ],
      ),
    );
  }
}
