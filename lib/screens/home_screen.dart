import 'package:dpj/screens/calendar.dart';
import 'package:dpj/screens/my_setting.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int curIdx = 1;

  List bodyItem = [
    const Text("News"),
    const Calendar(),
    const MySetting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: bodyItem.elementAt(curIdx),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curIdx,
        onTap: (idx) {
          setState(() {
            curIdx = idx;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'My',
          ),
        ],
        //selected된 item color
        selectedItemColor: Colors.red,
        //unselected된 item color
        unselectedItemColor: Colors.grey,
        //unselected된 label text
        showUnselectedLabels: true,
        //BottomNavigationBar Type -> fixed = bottom item size고정
        //BottomNavigationBar Type -> shifting = bottom item selected 된 item이 확대
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
