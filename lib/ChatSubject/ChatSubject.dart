import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:klawapplication/About.dart';
import 'package:klawapplication/ChatSubject/AddCourse.dart';
import 'package:klawapplication/ChatSubject/Chat.dart';
import 'package:klawapplication/Profile.dart';

class ChatSubject extends StatefulWidget {
  const ChatSubject({super.key});

  @override
  State<ChatSubject> createState() => _ChatSubjectState();
}

class _ChatSubjectState extends State<ChatSubject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => AddCourse()));
        },
        backgroundColor: Colors.black, // Customize background color if needed
        child: Icon(
          Icons.add,
          size: 32, // Adjust icon size
          color: Colors.white, // Customize icon color if needed
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
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
        child: ListView(
          children: [
            CircleAvatar(radius: 80.r,backgroundColor: Colors.white,
                child: Image.asset("assets/splash.png",width: 155.w,height: 155.h,)),

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
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
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
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
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
              trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.h),
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
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) => Chat()));
                                  },
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
                                          'Chat',
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
      ),
    );
  }
}
