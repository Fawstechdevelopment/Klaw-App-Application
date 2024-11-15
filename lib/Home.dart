import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'About.dart';
import 'Profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF006039),
        toolbarHeight: 70.h,
        leading: Image.asset("assets/splash.png"),
        actions: [
          Builder(builder: (context) {
            return InkWell(
              onTap: () {
                Scaffold.of(context).openEndDrawer();
              },
              child: Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: Icon(
                  Icons.list,
                  size: 38.sp,
                  color: Color(0xFFD9D9D9),
                ),
              ),
            );
          })
        ],
        title: Text(
          'KLAW',
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              color: Color(0xFF00C677),
              fontSize: 30.sp,
              fontWeight: FontWeight.w700,
              height: 0.h,
            ),
          ),
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: Color(0xFF006039),


        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            CircleAvatar(
                radius: 80.r,
                backgroundColor: Colors.white,
                child: Image.asset(
                  "assets/splash.png",
                  width: 155.w,
                  height: 155.h,
                )),
            Spacer(),
            Column(mainAxisSize: MainAxisSize.min,
              children: [
              ListTile(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => Profile()));
                },
                title: Text(
                  'Setting',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                      height: 0.h,
                    ),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => About()));
                },
                title: Text(
                  'About',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                      height: 0.h,
                    ),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
              ListTile(
                title: Text(
                  'Review',
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w700,
                      height: 0.h,
                    ),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),

            ],)

          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Icon(
            Icons.closed_caption_disabled_outlined,
            size: 150.sp,
            color: Color(0xFFD9D9D9),
          )),
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
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
