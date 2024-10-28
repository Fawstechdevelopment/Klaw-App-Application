import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:klawapplication/ChatSubject/ChatSubject.dart';
import 'package:klawapplication/Home.dart';
import 'package:klawapplication/Profile.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  final screen = [
    ChatSubject(),
    Home(),
    Profile(),

  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.orange,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
          currentIndex: currentindex,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble,size: 33.sp,
                  color: currentindex == 0 ?   Color(0xFF006039) : Colors.grey),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,size: 33.sp,
                  color: currentindex == 1 ?  Color(0xFF006039) : Colors.grey,
                ),
                label: ''),

            BottomNavigationBarItem(
                icon: Icon(Icons.person,size: 33.sp,
                    color: currentindex == 2 ?   Color(0xFF006039) : Colors.grey),
                label: '',),
          ]),
      body: screen[currentindex],
    );
  }
}
