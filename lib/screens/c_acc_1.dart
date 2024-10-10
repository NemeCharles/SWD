import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swdltd/screens/c_acc_2.dart';
import 'package:swdltd/styles/textstyles.dart';
import 'package:swdltd/widgets/long_button.dart';
import '../widgets/underline_text.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  late TextEditingController nameController;
  late TextEditingController name2Controller;
  late TextEditingController numController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController refController;
  bool obscureText = true;
  final _formKey = GlobalKey<FormState>();



  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    name2Controller = TextEditingController();
    numController = TextEditingController();
    nameController = TextEditingController();
    refController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    refController.dispose();
    numController.dispose();
    name2Controller.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: [
                  Color(0XFFEF5858),
                  Color(0XFF141414),
                ],
                center: Alignment.topRight,
              ),
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 6.0),
              child: Container(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Colors.white.withOpacity(0.7),
                      Colors.transparent,
                    ],
                    center: Alignment.topRight,
                  ),
                ),
              ),
            ),
          ),
          // Your app content goes here
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 21.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 59.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: [
                              Icon(Icons.arrow_back_ios_rounded, size: 24.sp, color: const Color(0XFFA4A4A4),),
                              SizedBox(width: 3.w,),
                              Text(
                                'Back',
                                style: AppTextStyles.sub.copyWith(color: const Color(0XFFA4A4A4)),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: GradientUnderlineText('Sign in instead',
                            gradient: const LinearGradient(
                              colors: [
                                Color(0XFFEF5858),
                                Color(0XFFEFA058),
                              ],
                            ), style: AppTextStyles.sub,),
                        )

                      ],
                    ),
                  ),
                  Container(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 20.h,),
                          Text(
                            'Create an account', style: AppTextStyles.h1.copyWith(fontSize: 31.sp),
                          ),
                          SizedBox(height: 15.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'First name',
                                    style: AppTextStyles.sub,
                                  ),
                                  SizedBox(
                                    width: 159.w,
                                    child: TextFormField(
                                      controller: nameController,
                                      style: AppTextStyles.sub.copyWith(color: const Color(0XFFA4A4A4)),
                                      validator: (value) =>
                                      value == null || value.isEmpty ? 'Field cannot be empty' : null,
                                      decoration: const InputDecoration(
                                          hintText: 'First name'
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Last name',
                                    style: AppTextStyles.sub,
                                  ),
                                  SizedBox(
                                    width: 159.w,
                                    child: TextFormField(
                                      controller: name2Controller,
                                      style: AppTextStyles.sub.copyWith(color: const Color(0XFFA4A4A4)),
                                      validator: (value) =>
                                      value == null || value.isEmpty ? 'Field cannot be empty' : null,
                                      decoration: const InputDecoration(
                                          hintText: 'Last name'
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Phone number',
                              style: AppTextStyles.sub,
                            ),
                          ),
                          TextFormField(
                            controller: numController,
                            keyboardType: TextInputType.number,
                            style: AppTextStyles.sub.copyWith(color: const Color(0XFFA4A4A4)),
                            validator: (value) =>
                            value == null || value.isEmpty ? 'Field cannot be empty' : null,
                            decoration: const InputDecoration(
                                hintText: 'Enter phone number'
                            ),
                          ),
                          SizedBox(height: 20.h,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Email address',
                              style: AppTextStyles.sub,
                            ),
                          ),
                          TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            style: AppTextStyles.sub.copyWith(color: const Color(0XFFA4A4A4)),
                            validator: (value) =>
                            value == null || value.isEmpty ? 'Field cannot be empty' : null,
                            decoration: const InputDecoration(
                                hintText: 'Enter email address'
                            ),
                          ),
                          SizedBox(height: 20.h,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Password',
                              style: AppTextStyles.sub,
                            ),
                          ),
                          TextFormField(
                            controller: passwordController,
                            obscureText: obscureText,
                            style: AppTextStyles.sub.copyWith(color: const Color(0XFFA4A4A4)),
                            validator: (value) =>
                            value == null || value.isEmpty ? 'Field cannot be empty' : null,
                            decoration: InputDecoration(
                              hintText: 'Enter Password',
                              suffixIcon: GestureDetector(
                                onTap: () => setState(() {
                                  obscureText = !obscureText;
                                }),
                                child: Icon(
                                  obscureText ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.h,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Referral Code (Optional)',
                              style: AppTextStyles.sub,
                            ),
                          ),
                          TextFormField(
                            controller: emailController,
                            style: AppTextStyles.sub.copyWith(color: const Color(0XFFA4A4A4)),
                            decoration: const InputDecoration(
                                hintText: 'Enter Referral Code'
                            ),
                          ),
                          SizedBox(height: 20.h,),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const OTPScreen(email: 'neme@gmail.com',),
                                  )
                              );
                              // if(_formKey.currentState!.validate()) {
                              //   print('true');
                              // } else {print('false');}
                            },
                            child: const LongButton(text: 'Next'),
                          ),
                          SizedBox(height: 25.h,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 159.5.w,
                                height: 3.h,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(3.r))
                                ),
                              ),
                              Container(
                                width: 159.5.w,
                                height: 3.h,
                                decoration: BoxDecoration(
                                    color: const Color(0XFF292929),
                                    borderRadius: BorderRadius.all(Radius.circular(3.r))
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20.h,),
                          Text(
                            'Account information', style: AppTextStyles.h3,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

        ],
      ),
    );
    ///
  }
}


