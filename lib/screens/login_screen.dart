import 'package:flutter/material.dart';
import 'package:reliv/utils/widgets.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController mobile = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Flexible(flex: 1, child: Container()),
                  Text("RELIV",
                      style: TextStyle(
                        color: const Color(0xff1E1E1E),
                        fontWeight: FontWeight.w400,
                        fontSize: 20.sp,
                      )),
                  SizedBox(height: 3.h),
                  SizedBox(
                      width: 85.w,
                      child: Image.asset("assets/images/reliv_logo.png")),
                  Text("Let's REVIVE our nature with RELIV",
                      style: TextStyle(
                        color: const Color(0xff1E1E1E).withOpacity(0.6),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      )),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(6.w, 5.w, 0, 0),
                      child: Text("Login",
                          style: TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w600,
                            fontSize: 20.sp,
                          )),
                    ),
                  ),
                  Flexible(flex: 1, child: Container()),
                  Container(
                    width: 92.w,
                    decoration: BoxDecoration(
                        color: const Color(0xffF1F1F1),
                        borderRadius: BorderRadius.circular(3.w)),
                    child: TextFormField(
                      controller: mobile,
                      enableInteractiveSelection: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Mobile Number",
                        labelStyle:
                            TextStyle(color: Colors.grey, fontSize: 11.sp),
                        prefixIcon:
                            Icon(Icons.phone, color: Colors.black, size: 6.w),
                      ),
                    ),
                  ),
                  SizedBox(height: 3.w),
                  Container(
                    width: 92.w,
                    decoration: BoxDecoration(
                        color: const Color(0xffF1F1F1),
                        borderRadius: BorderRadius.circular(3.w)),
                    child: TextFormField(
                      controller: password,
                      obscureText: true,
                      enableInteractiveSelection: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        labelStyle:
                            TextStyle(color: Colors.grey, fontSize: 11.sp),
                        prefixIcon: Icon(Icons.key_rounded,
                            color: Colors.black, size: 6.w),
                        suffixIcon: Icon(Icons.visibility,
                            color: Colors.grey, size: 6.w),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 50.w, 0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Forgot Password?",
                          style: TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w600,
                            fontSize: 13.sp,
                          )),
                    ),
                  ),
                  Flexible(flex: 2, child: Container()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(20.w),
                        splashColor: Colors.grey[50],
                        highlightColor: Colors.grey[50],
                        onTap: () {},
                        child: Ink(
                            height: 12.w,
                            width: 30.w,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0XFFC9D5E7)
                                          .withOpacity(0.70),
                                      spreadRadius: 0,
                                      blurRadius: 22,
                                      offset: const Offset(2.0, 6.0))
                                ],
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.w)),
                            child: Center(
                                child: Text("SignUp",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.sp)))),
                      ),
                      InkWell(
                        borderRadius: BorderRadius.circular(20.w),
                        splashColor: const Color(0xffEAC0FF),
                        highlightColor: const Color(0xffEAC0FF),
                        onTap: () {},
                        child: Ink(
                            height: 12.w,
                            width: 30.w,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0XFFC9D5E7)
                                          .withOpacity(0.70),
                                      spreadRadius: 0,
                                      blurRadius: 22,
                                      offset: const Offset(2.0, 6.0))
                                ],
                                gradient: const LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xff1A39CB),
                                      Color(0xffB454BA)
                                    ]),
                                borderRadius: BorderRadius.circular(20.w)),
                            child: Center(
                                child: Text("Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.sp)))),
                      ),
                    ],
                  ),
                  Flexible(flex: 2, child: Container()),
                ],
              ),
            ),
          ));
    });
  }
}
