import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:isence/const/app_colors.dart';
import 'package:isence/ui/views/MainHomePage/home_screen.dart';
import 'package:isence/ui/widgets/getTextfield.dart';



// ignore: use_key_in_widget_constructors
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Container(
              height: 1.sh,
              width: 0.5.sw,
              color: Color(0xffF7F9FB),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 96.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "logo.png",
                      height: 32.h,
                      width: 141.w,
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    Text(
                      "Hi, Welcome Back!",
                      style: TextStyle(
                        fontFamily: "SF Pro",
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        color:AppColors.insane_primary,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Text(
                      "Get unlimited access to thousands of inspiring classes",
                      style: TextStyle(
                        fontFamily: "SF Pro",
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                         color: AppColors.insane_primary.withOpacity(0.58),
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    SizedBox(
                      height: 55.h,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            side: MaterialStateProperty.all(BorderSide(
                              color: AppColors.insane_primary.withOpacity(0.2),
                            )),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            foregroundColor: MaterialStateProperty.all(
                              AppColors.insane_primary,
                            ),
                            // padding: MaterialStateProperty.all(
                            //     EdgeInsets.symmetric(vertical: 14.h)),
                            textStyle: MaterialStateProperty.all(TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: "SF Pro"))),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "google.png",
                              height: 27.w,
                              width: 27.w,
                            ),
                            SizedBox(width: 20.w),
                            Text(
                              "Sign in with google",
                              style: TextStyle(
                                fontFamily: "SF Pro",
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.insane_primary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        Expanded(child: Divider()),
                        SizedBox(
                          width: 16.w,
                        ),
                        Text(
                          "Or Sign in with Email",
                          style: TextStyle(
                            fontFamily: "SF Pro",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.insane_primary.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Expanded(child: Divider()),
                      ],
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Text(
                      "Email address",
                      style: TextStyle(
                        fontFamily: "SF Pro",
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.insane_primary,
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    getTextField(hint: "suhail@isense.u",prefixicon: Icons.mail),

                    SizedBox(
                      height: 18.h,
                    ),
                  
                    Text(
                      "Password",
                      style: TextStyle(
                        fontFamily: "SF Pro",
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.insane_primary,
                      ),
                    ),
                      SizedBox(
                      height: 6.h,
                    ),
                    getTextField(hint: "password",prefixicon: Icons.lock,suffixicon: Icons.visibility),
                    SizedBox(
                      height: 18.h,
                    ),
                    SizedBox(
                      height: 55.h,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          Get.to(HomeScreen());
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              AppColors.insane_button,
                            ),
                            foregroundColor:
                                MaterialStateProperty.all(AppColors.insane_white),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(vertical: 14.h)),
                            textStyle: MaterialStateProperty.all(TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ))),
                        child: Text("Login"),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                  
                    Align(
                      alignment: Alignment.center,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(
                            "Not Registered Yet?  ",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color:AppColors.insane_primary.withOpacity(.53),
                            ),
                          ),
                          Text(
                            "Create an Account",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color:AppColors.insane_button,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 1.sh,
              width: 0.5.sw,
              color: AppColors.insane_button,
              child: Padding(
                padding:  EdgeInsets.only(left:0.05.sw),
                child: Image.asset('login.png',fit: BoxFit.cover,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
