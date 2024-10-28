import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:klawapplication/ChatSubject/LearnMore.dart';

class AddCourse extends StatefulWidget {
  const AddCourse({super.key});

  @override
  State<AddCourse> createState() => _AddCourseState();
}

class _AddCourseState extends State<AddCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF006039),
        toolbarHeight: 70.h,
        leading: Image.asset("assets/splash.png"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Icon(
              Icons.list,
              size: 38.sp,
              color: Color(0xFFD9D9D9),
            ),
          )
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
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15.h),
            SizedBox(
              width: 340.w,
              height: 43.h,
              child: TextField(
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black,fontSize: 16.sp),
                decoration: InputDecoration(suffixIcon: Icon(Icons.search,color:  Color(0xFF006039),),
                  hintText: "Search",
                  hintStyle: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color: Color(0xFF006039),
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  filled: true,
                  fillColor:  Color(0xFFD9D9D9),
                  focusColor:  Color(0xFFD9D9D9),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 10.w),
                ),

              ),
            ),


            SizedBox(height: 15.h),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 136.w,
                  height: 42.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFF00C677),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),child:  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                      'Filter ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w400,
                        height: 0.05.h,

                      ),),
                                  ),Icon(Icons.filter_alt_outlined,color: Colors.white,)
                    ],
                  ),
                ),

                SizedBox(width: 30.w),
                Container(
                  width: 136.w,
                  height: 42.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFF00C677),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                  ),child:  Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sort by ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          height: 0.05.h,

                        ),),
                    ),Icon(Icons.sort,color: Colors.white,)
                  ],
                ),
                ),
              ],
            ),
SizedBox(height: 19.h),
            Center(
              child: SizedBox(
                height: 108 * 10,
                width: 375.w,
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (BuildContext, position) {
                    return Container(
                      width: 375.w,
                      height: 131.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 0.80.w, color: Color(0xFF006039)),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 15.w),
                          Container(
                            width: 86.43.w,
                            height: 86.43.h,
                            decoration: ShapeDecoration(
                              color: Color(0xFF006039),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13.r),
                              ),
                            ),
                            child: SizedBox(
                              width: 67.99.w,
                              height: 20.74.h,
                              child: Center(
                                child: Text(
                                  'CST014',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w700,
                                      height: 0.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 30.h, left: 20.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 172.w,
                                  height: 23.h,
                                  child: Text(
                                    'SUBJECT  NAME',
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(
                                        color: Color(0xFF006039),
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w700,
                                        height: 0.h,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 6.h,
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
                                        height: 0.h,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Learnmore()));},
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 130.w),
                                    child: Container(
                                      width: 101.w,
                                      height: 29.h,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF00C677),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(12.r),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Learn more',
                                          style: GoogleFonts.inter(
                                            textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w700,
                                              height: 0.h,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext, position) {
                    return SizedBox(
                      height: 10.h,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ) ,
    );
  }
}
