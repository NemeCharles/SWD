import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swdltd/screens/c_acc_1.dart';
import 'package:swdltd/screens/home_screen.dart';
import 'package:swdltd/styles/textstyles.dart';
import '../widgets/gradient_text.dart';
import '../widgets/long_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  bool obscureText = true;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
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
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 120.h,),
                Container(
                  height: 100.h,
                  width: 100.h,
                  decoration: BoxDecoration(
                      color: const Color(0XFF1E1E1E),
                      borderRadius: BorderRadius.all(Radius.circular(8.r))
                  ),
                ),
                SizedBox(height: 15.h,),
                Text(
                    'Welcome back 👋🏾',
                    style: AppTextStyles.h1
                ),
                SizedBox(height: 26.h,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 22.w),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
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
                              hintText: 'Enter Email address'
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
                                ),)
                          ),
                        ),
                        SizedBox(height: 5.h,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Forgot password?',
                            style: AppTextStyles.sub1.copyWith(color: const Color(0XFFA4A4A4)),
                          ),
                        ),
                        SizedBox(height: 50.h,),
                        GestureDetector(
                          onTap: () {
                            // if(_formKey.currentState!.validate()) {
                            //   print('true');
                            // } else {print('false');}
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                )
                            );
                          },
                          child: const LongButton(text: 'Sign in'),
                        ),
                        SizedBox(height: 15.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('I don’t have an account, ',
                              style: AppTextStyles.sub1.copyWith(color: const Color(0XFFA4A4A4)),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SignUpScreen(),
                                    )
                                );
                              },
                              child: GradientText('Create account',
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0XFFEF5858),
                                    Color(0XFFEFA058),
                                  ],
                                ), style: AppTextStyles.sub1,),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}



