

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/textstyles.dart';

class LongButton extends StatelessWidget {
  const LongButton({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 328.w,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [
                Color(0XFFEF5858),
                Color(0XFFEFA058),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.r))
      ),
      child: Center(child: Text(text, style: AppTextStyles.sub,)),
    );
  }
}
