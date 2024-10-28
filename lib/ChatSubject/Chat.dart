import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = [];

  void _sendMessage() {
    if (_controller.text.trim().isNotEmpty) {
      setState(() {
        _messages.add(_controller.text.trim());
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 65.h,
        automaticallyImplyLeading: false,
        leadingWidth: 0.w,
        title:  Row(
          children: [
            GestureDetector(onTap: (){ Navigator
                .of(context).pop();},
              child: SizedBox( width: 30.w,
                  height: 30.h,
                  child: Icon(Icons.arrow_back_ios,color: Color(0xFF006039),)),
            ),
            Container(
              width: 61.43.w,
              height: 61.43.h,
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
            Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                        fontSize: 20.sp,
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


      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(8.0.sp),
          child: Column(
            children: [
              SizedBox(height: 20),
              ..._messages.map((message) => ChatBubble(
                    clipper: ChatBubbleClipper5(type: BubbleType.sendBubble),
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 10),
                    backGroundColor: Color(0xFF04CA7B),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * 0.7,
                      ),
                      child: Text(
                        message,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
              ChatBubble(
                clipper: ChatBubbleClipper5(type: BubbleType.receiverBubble),
                backGroundColor: Color(0xFF04CA7B),
                margin: EdgeInsets.only(top: 20),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.7,
                  ),
                  child: Text(
                    "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 80.h,
              )
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 80.h,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: [
            SizedBox(width: 15.w),
            SizedBox(
              width: 313.w,
              height: 64.h,
              child: TextFormField(
                controller: _controller,
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Type your message...",
                  hintStyle: GoogleFonts.openSans(
                    textStyle: TextStyle(
                      color: Color(0xFF006039),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  filled: true,
                  fillColor: Color(0xFFD7D7D7),
                  focusColor: Color(0xFFD7D7D7),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.r),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(width: 15.w),
            GestureDetector(
              onTap: _sendMessage,
              child: Image.asset(
                'assets/sendicon.png',
                width: 45.w,
                height: 45.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
