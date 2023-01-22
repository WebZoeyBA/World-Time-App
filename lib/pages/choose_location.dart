import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
  @override
  void initState() {
    super.initState();
    print('Init state function ran');
  }

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
          setState(() {
            counter += 1;
          });
        },
        child: Row(
          children: [
            Icon(Icons.add),
            Text(
              'counter is : $counter',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
