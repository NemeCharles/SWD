import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Navs extends StatelessWidget {
  const Navs({
    super.key, required this.img, required this.label, this.style
  });
  final String img;
  final String label;
  final Color? style;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          img,
          height: 24.h, width: 24.w,
        ),
        SizedBox(height: 3.h,),
        Text(label, style: TextStyle(fontWeight: FontWeight.w200, fontSize: 12.sp, color: style ?? const Color(0XFF696969)),)
      ],
    );
  }
}
