import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String selectedPlan = 'Plan 1'; // Initial selected plan

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10.w, top: 20.h),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    'assets/editbutton.png',
                    width: 43.w,
                    height: 43.h,
                  )),
            ),

            // Profile picture with edit icon
            Stack(
              children: [
                Container(
                  width: 116.w,
                  height: 116.h,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image:
                          AssetImage("assets/splash.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(
                      side: BorderSide(
                        width: 3.w,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: Color(0xFFFFBD00),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: 80.h,left: 90.h),
                  child: Container(
                    width: 34.w,
                    height: 34.h,
                    decoration: ShapeDecoration(color: Colors.black87,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r))),
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 50.h),
Padding(
  padding:  EdgeInsets.only(left: 20.w,right: 20.w),
  child: Divider(color:  Color(0xFF04CA7B),),
),
            SizedBox(  width: 336.50.w,
              height: 40.25.h,
              child: Row(
                children: [
                  SizedBox(
                    width: 114.w,
                    height: 18.h,
                    child: Opacity(
                      opacity: 0.80,
                      child: Text(
                        'NAME             :',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                          color: Color(0xFF323232),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),)
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 176.w,
                    height: 23.h,
                    child: Text(
                      '  Anandu Chandran',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                        color: Color(0xFF323232),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),)
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20.w,right: 20.w),
              child: Divider(color:  Color(0xFF04CA7B),),
            ),
            SizedBox(  width: 336.50.w,
              height: 40.25.h,
              child: Row(
                children: [
                  SizedBox(
                    width: 114.w,
                    height: 18.h,
                    child: Opacity(
                      opacity: 0.80,
                      child: Text(
                          'Department :',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),)
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 176.w,
                    height: 23.h,
                      child: Text(
                        '  CSE',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF323232),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),)
                  ),
                ],
              ),
            ),

            Padding(
              padding:  EdgeInsets.only(left: 20.w,right: 20.w),
              child: Divider(color:  Color(0xFF04CA7B),),
            ),
            SizedBox(  width: 336.50.w,
              height: 40.25.h,
              child: Row(
                children: [
                  SizedBox(
                    width: 60.w,
                    height: 18.h,
                    child: Opacity(
                      opacity: 0.80,
                      child: Text(
                          'Email :',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),)
                      ),
                    ),
                  ),

                  SizedBox(
                      width: 269.w,
                      height: 23.h,
                      child: Text(
                        'ananduChandran@gmail.com',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF323232),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),)
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20.w,right: 20.w),
              child: Divider(color:  Color(0xFF04CA7B),),
            ),
            SizedBox(  width: 336.50.w,
              height: 80.25.h,
              child: Row(
                children: [
                  SizedBox(
                    width: 114.w,
                    height: 75.h,
                    child: Opacity(
                      opacity: 0.80,
                      child: Text(
                          'College         :',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),)
                      ),
                    ),
                  ),

                  SizedBox( width: 206.w,
                      height: 73.h,
                      child: Text(
                        'COLLEGE OF ENGINEERING AND MANAGEMENT PUNNAPRA',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF323232),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),)
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20.w,right: 20.w),
              child: Divider(color:  Color(0xFF04CA7B),),
            ),
            SizedBox(  width: 336.50.w,
              height: 40.25.h,
              child: Row(
                children: [
                  SizedBox(
                    width: 117.w,
                    height: 25.h,
                    child: Opacity(
                      opacity: 0.80,
                      child: Text(
                          'University      :',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),)
                      ),
                    ),
                  ),

                  SizedBox(
                      width: 166.w,
                      height: 23.h,
                      child: Text(
                        'KTU',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF323232),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),)
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20.w,right: 20.w),
              child: Divider(color:  Color(0xFF04CA7B),),
            ),
            SizedBox(  width: 336.50.w,
              height: 40.25.h,
              child: Row(
                children: [
                  SizedBox(
                    width: 114.w,
                    height: 26.h,
                    child: Opacity(
                      opacity: 0.80,
                      child: Text(
                          'Blood Type    :',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),)
                      ),
                    ),
                  ),

                  SizedBox(
                      width: 166.w,
                      height: 23.h,
                      child: Text(
                        ' o+ve',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF323232),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),)
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20.w,right: 20.w),
              child: Divider(color:  Color(0xFF04CA7B),),
            ),
            SizedBox(  width: 336.50.w,
              height: 40.25.h,
              child: Row(
                children: [
                  SizedBox(
                    width: 118.w,
                    height: 26.h,
                    child: Opacity(
                      opacity: 0.80,
                      child: Text(
                          'Current Plan  :',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),)
                      ),
                    ),
                  ),

                  SizedBox(
                      width: 166.w,
                      height: 23.h,
                      child: Text(
                        ' ${selectedPlan}',
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                            color: Color(0xFF323232),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),)
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 20.w,right: 20.w),
              child: Divider(color:  Color(0xFF04CA7B),),
            ),
            SizedBox(width: 336.50.w,
              height: 40.25.h,
              child: Row(
                children: [
                  SizedBox(
                    width: 142.w,
                    height: 26.h,
                    child: Opacity(
                      opacity: 0.80,
                      child: Text(
                          'Change Plan      :',
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                            ),)
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 5,
                    child: Container(
                      width: 155.w,
                      height: 26.h,
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        underline: SizedBox(),
                        value: selectedPlan,
                        items: <String>['Plan 1', 'Plan 2', 'Plan 3']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: GoogleFonts.inter(fontSize: 14.sp),
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            selectedPlan = value!;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Dropdown for changing the plan
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
