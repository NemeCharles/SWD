import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SlitBorder extends StatelessWidget {
  const SlitBorder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 19.h,
      width: 1.w,
      decoration: const BoxDecoration(
          color: Color(0XFFD6D6D6)
      ),
    );
  }
}
