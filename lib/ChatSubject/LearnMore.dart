import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Chat.dart';

class Learnmore extends StatefulWidget {
  const Learnmore({super.key});

  @override
  State<Learnmore> createState() => _LearnmoreState();
}

class _LearnmoreState extends State<Learnmore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 65.h,
        leadingWidth: 0.w,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: SizedBox(
                  width: 30.w,
                  height: 30.h,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFF006039),
                  )),
            ),
            Container(
              width: 55.43.w,
              height: 55.43.h,
              decoration: ShapeDecoration(
                color: Color(0xFF006039),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13.r),
                ),
              ),
              child: SizedBox(
                width: 48.32.w,
                height: 14.74.h,
                child: Center(
                  child: Text(
                    'CST014',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        height: 0.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 5.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.h),
                SizedBox(
                  width: 172.w,
                  height: 23.h,
                  child: Text(
                    'SUBJECT  NAME',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Color(0xFF006039),
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 137.w,
                  height: 23.h,
                  child: Text(
                    'KTU University',
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: Color(0xFF006039),
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => Chat()));
            },
            child: Padding(
              padding: EdgeInsets.only(right: 10.h),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 90.w,
                  height: 26.70.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFF00C677),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Learn more',
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                          height: 0.h,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(    mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40.h),
            Center(
              child: Container(
                width: 369.w,
                height: 615.h,
                padding:  EdgeInsets.only(
                  top: 16.h
                  ,
                  left: 24.w,
                  right: 22.w,
                  bottom: 47.h,
                ),
                decoration: ShapeDecoration(
                  color: Color(0xFF04CA7B),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.r),
                      topRight: Radius.circular(16.r),
                      bottomLeft: Radius.circular(1.r),
                      bottomRight: Radius.circular(16.r),
                    ),
                  ),
                ),child:   SizedBox(
                width: 323.w,
                height: 515.h,
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur. Id etiam amet porttitor lectus orci. Sit in risus non quis. Arcu sed vestibulum vestibulum enim odio egestas malesuada faucibus. Eu id egestas sollicitudin sapien pretium blandit tellus at. Nibh vel sit blandit metus. Imperdiet auctor scelerisque ultrices ultrices mattis justo turpis. Est risus pharetra vitae hac nisl eget suscipit pretium. Morbi faucibus lorem sem congue morbi blandit sollicitudin neque egestas. Ultricies commodo aliquet dui varius dolor dignissim felis. Mauris sit dictum sodales ut.\nProin lorem maecenas est eu eget. Sit porttitor odio lectus scelerisque interdum adipiscing nisl eu sed. Quam non eu nulla sit proin orci maecenas aliquet. Lorem in eget eget ultricies velit. Vitae aliquam vel eu aliquet tortor ultricies velit morbi. Scelerisque tellus sed consectetur ut massa sagittis. Mauris tortor tempus cras cras urna. Nunc eget pellentesque tortor neque faucibus. Amet consectetur odio et vitae ut risus egestas tristique ligula. Ultrices ac nisi libero porttitor.',
                  style: GoogleFonts.openSans(
                    textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 14.5.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
