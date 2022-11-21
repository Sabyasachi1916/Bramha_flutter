import 'package:flutter/material.dart';

import 'Landing.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();

}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Scaffold(
          appBar: AppBar(title: Text('Bramha'), bottom:  TabBar(
            tabs: <Widget>[
              Tab(
                icon:  Image.asset("assets/images/home.png", height: 25, width: 25, color: Colors.white70,), text: "Home",
              ),
              Tab(
                icon: Image.asset("assets/images/pills.png", height: 25, width: 25, color: Colors.white70,), text: "Medicines",
              ),
              Tab(
                icon: Image.asset("assets/images/history.png", height: 25, width: 25, color: Colors.white70,), text: "History",
              ),
              Tab(
                icon: Image.asset("assets/images/profile-user.png", height: 25, width: 25, color: Colors.white70,), text: "My Profile",
              ),
            ],
          ),
          ),
          body:  TabBarView(
              children: <Widget>[
                Landing(),
                Center(
                  child: Text("It's rainy here"),
                ),
                Center(
                  child: Text("It's sunny here"),
                ),
                Center(
                  child: Text("My Profile"),
                ),
              ],
            ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              // Add your onPressed code here!
            },
            label: const Text('My Cart'),
            icon: const Icon(Icons.shopping_cart),
            backgroundColor: Colors.green,

          ),
        ));
  }
}