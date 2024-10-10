import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class News extends StatelessWidget {
  const News({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Container(
        height: 120.h,
        width: 285.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12.r)),
            color: Colors.red,
            image: const DecorationImage(image: AssetImage('assets/photo.png'), fit: BoxFit.cover)
        ),
      ),
    );
  }
}
