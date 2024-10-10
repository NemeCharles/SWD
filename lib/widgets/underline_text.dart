import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientUnderlineText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Gradient gradient;

  const GradientUnderlineText(this.text, {super.key, required this.gradient, required this.style});

  double getTextWidth(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size.width;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ShaderMask(
          shaderCallback: (bounds) {
            return gradient.createShader(
              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
            );
          },
          child: Text(
            text,
            style: style.copyWith(color: Colors.white),
          ),
        ),
        SizedBox(height: 4.h),
        Container(
          height: 2,
          width: getTextWidth(text, style),
          decoration: BoxDecoration(
            gradient: gradient,
          ),
        ),
      ],
    );
  }
}
