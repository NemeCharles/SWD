import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../styles/textstyles.dart';
class LowerOptions extends StatelessWidget {
  const LowerOptions({
    super.key, required this.img, required this.label,
  });
  final String img;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.red,
      height: 51.h,
      width: 59.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            img,
            height: 20.h, width: 20.w,
          ),
          Text(
            label, style: AppTextStyles.body2,
          )
        ],
      ),
    );
  }
}
