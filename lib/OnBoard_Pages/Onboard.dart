import 'package:flutter/material.dart';
import 'package:klawapplication/Home.dart';

import '../Authentication/Login/Login.dart';


class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Login() ));},
          child: Center(child: Container(width: 200,height: 100,color: Colors.red,)))
    );
  }
}
