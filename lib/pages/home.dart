import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {} as Map;

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
          child: Column(children: [
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Icon(Icons.edit_location), Text("Edit location")],
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data['location'],
                  style: TextStyle(fontSize: 28.0, letterSpacing: 2.0),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(data['time']),
          ]),
        ),
      ),
    );
  }
}
