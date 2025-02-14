import 'package:flutter/material.dart';

class OvalPainter extends CustomPainter {
  final Color color; // 타원의 색상

  OvalPainter({this.color = Colors.blue});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill; // 내부 채우기

    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height); // 타원의 크기 설정
    canvas.drawOval(rect, paint); // 타원 그리기
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class OvalWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const OvalWidget({super.key, this.width = 200, this.height = 100, this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height), // 타원의 크기 설정
      painter: OvalPainter(color: color),
    );
  }
}

