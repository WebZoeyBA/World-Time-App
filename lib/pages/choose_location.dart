import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'loading.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 59, 99, 121),
        title: Text("Choose location"),
        centerTitle: true,
        elevation: 0,
      ),
      body: OutlinedButton(
        onPressed: () {
          setState(() {});
        },
        child: Row(
          children: [
            Icon(Icons.add),
            Text(
              'counter is ',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
