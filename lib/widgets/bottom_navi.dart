import 'package:flutter/material.dart';

class BottomNavi extends StatefulWidget {
  const BottomNavi({super.key});

  @override
  State<BottomNavi> createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int curIdx = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: curIdx,
      onTap: (idx) {
        setState(() {
          curIdx = idx;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.music_note),
          label: 'Music',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.apps),
          label: 'Apps',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
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
      type: BottomNavigationBarType.shifting,
    );
  }
}

//  