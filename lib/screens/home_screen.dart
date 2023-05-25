import 'package:dpj/screens/calendar.dart';
import 'package:dpj/widgets/bottom_navi.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const String _title = "Flutter Calendar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_title),
      ),
      body: const Calendar(),
      bottomNavigationBar: const BottomNavi(),
    );
  }
}
