import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Icon(Icons.edit_location), Text("Edit location")],
              ))
        ]),
      ),
    );
  }
}
