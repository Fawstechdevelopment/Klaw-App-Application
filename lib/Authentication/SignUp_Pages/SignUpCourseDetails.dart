import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../BottomNavigation.dart';

class Signupcoursedetails extends StatefulWidget {
  const Signupcoursedetails({super.key});

  @override
  State<Signupcoursedetails> createState() => _SignupcoursedetailsState();
}

class _SignupcoursedetailsState extends State<Signupcoursedetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Makes Scaffold adjust for the keyboard
      backgroundColor: const Color(0xFF006039),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 180.h), // Adjust top spacing as needed
            Center(
              child: Container(
                width: 155.w,
                height: 155.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  image: const DecorationImage(
                    image: AssetImage("assets/splash.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              'KLAW',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: const Color(0xFF00C677),
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Container(
              width: 412.w,
              height: 483.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(43.r),
                    topLeft: Radius.circular(43.r),
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only( top: 35.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20.h),
                    SizedBox(
                      width: 325.41.w,
                      height: 41.72.h,
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(prefixIcon: Icon(Icons.person_outline_outlined,color: Color(0xFF006039)),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'College',
                          hintStyle: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.30000001192092896),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              height: 0.h,
                            ),
                          ),focusedBorder: OutlineInputBorder(borderSide:BorderSide(width: 1.w,color: Color(0xFF006039)),borderRadius: BorderRadius.circular(15.r) ),
                          enabledBorder: OutlineInputBorder(borderSide:BorderSide(width: 1.w,color: Color(0xFF006039)),borderRadius: BorderRadius.circular(15.r) ) ,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    SizedBox(
                      width: 325.41.w,
                      height: 41.72.h,
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(prefixIcon: Icon(Icons.book_online_outlined,color: Color(0xFF006039)),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Department',
                          hintStyle: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.30000001192092896),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              height: 0.h,
                            ),
                          ),focusedBorder: OutlineInputBorder(borderSide:BorderSide(width: 1.w,color: Color(0xFF006039)),borderRadius: BorderRadius.circular(15.r) ),
                          enabledBorder: OutlineInputBorder(borderSide:BorderSide(width: 1.w,color: Color(0xFF006039)),borderRadius: BorderRadius.circular(15.r) ) ,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    SizedBox(
                      width: 325.41.w,
                      height: 41.72.h,
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(prefixIcon: Icon(Icons.school_outlined,color: Color(0xFF006039)),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'University',
                          hintStyle: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.30000001192092896),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              height: 0.h,
                            ),
                          ),focusedBorder: OutlineInputBorder(borderSide:BorderSide(width: 1.w,color: Color(0xFF006039)),borderRadius: BorderRadius.circular(15.r) ),
                          enabledBorder: OutlineInputBorder(borderSide:BorderSide(width: 1.w,color: Color(0xFF006039)),borderRadius: BorderRadius.circular(15.r) ) ,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h),
                    SizedBox(
                      width: 325.41.w,
                      height: 41.72.h,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(prefixIcon: Icon(Icons.water_drop_outlined,color: Color(0xFF006039)),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Blood Group',
                          hintStyle: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.black.withOpacity(0.30000001192092896),
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400,
                              height: 0.h,
                            ),
                          ),focusedBorder: OutlineInputBorder(borderSide:BorderSide(width: 1.w,color: Color(0xFF006039)),borderRadius: BorderRadius.circular(15.r) ),
                          enabledBorder: OutlineInputBorder(borderSide:BorderSide(width: 1.w,color: Color(0xFF006039)),borderRadius: BorderRadius.circular(15.r) ) ,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50.h),
                    GestureDetector(onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Bottomnavigation()));},
                      child: Container(
                        width: 137.w,
                        height: 42.h,
                        decoration: ShapeDecoration(
                          color: Color(0xFF006039),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 2.w, color: Color(0xFF006039)),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                        ),child: Center(
                        child: Text(
                          'Submit',
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              height: 0.h,
                            ),
                          ),
                        ),
                      ),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}