import 'package:flutter/material.dart';

class MySetting extends StatefulWidget {
  const MySetting({super.key});

  @override
  State<MySetting> createState() => _MySettingState();
}

class _MySettingState extends State<MySetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("mySetting"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: 70,
            color: Colors.green[index * 200],
            alignment: Alignment.center,
            child: Text('item : $index'),
          );
        },
      ),
    );
  }
}
