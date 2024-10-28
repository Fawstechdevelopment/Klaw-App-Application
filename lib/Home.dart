import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(child: Icon(Icons.closed_caption_disabled_outlined,size: 150.sp,color: Color(0xFFD9D9D9),)),

        Opacity(
          opacity: 0.70,
          child: Text(
            'NO BLOGS     YET',
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 32.sp,
              fontWeight: FontWeight.w800,
            ),),
          ),
        )

      ],
    ),);
  }
}
