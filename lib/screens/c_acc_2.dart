import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../styles/textstyles.dart';
import '../widgets/long_button.dart';
import 'home_screen.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key, required this.email});
  final String email;
  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {

  final List<TextEditingController> _controllers = List.generate(6, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());


  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  void _handleInputChange(String value, int index) {
    if (value.isNotEmpty && index < _focusNodes.length - 1) {
      _focusNodes[index + 1].requestFocus();
    }
    else if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }
  }

  Widget _buildOTPDigitBox(int index) {
    return Container(
      width: 46.w,
      height: 52.h,
      margin: EdgeInsets.symmetric(horizontal: 3.w),
      child: TextFormField(
        controller: _controllers[index],
        focusNode: _focusNodes[index],
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        onChanged: (value) => _handleInputChange(value, index),

        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold, color: const Color(0XFFEF5858) ),
      ),
    );
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
                  // Color(0XFFFFAF65).withOpacity(0.6),
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
          Container(
            padding: EdgeInsets.only(left: 21.w, right: 21.w, bottom: 60.h),
            child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 59.h),
                          child: GestureDetector(
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
                        ),
                        SizedBox(height: 80.h,),
                        Text(
                          'Verify your email', style: AppTextStyles.h1.copyWith(fontSize: 31.sp),
                        ),
                        SizedBox(height: 20.h,),
                        Text(
                          'Please enter the OTP sent to', style: AppTextStyles.sub2,
                        ),
                        SizedBox(height: 3.h,),
                        Text(
                          widget.email, style: AppTextStyles.sub.copyWith(fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 10.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ...List.generate(3, (index) => _buildOTPDigitBox(index)),
                            Text(
                              '-',
                              style: TextStyle(
                                  fontSize: 24.sp, fontWeight: FontWeight.w400, color: const Color(0XFFBFBFBF)
                              ),
                            ),

                            ...List.generate(3, (index) => _buildOTPDigitBox(index + 3)),
                          ],
                        ),
                        const Spacer(),
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
                          child: const LongButton(text: 'Verify email'),
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
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(3.r))
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20.h,),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Email verification', style: AppTextStyles.h3,
                          ),
                        )
                      ],
                    ),
                  )
                ]
            ),
          )
        ],
      ),
    );
  }
}
