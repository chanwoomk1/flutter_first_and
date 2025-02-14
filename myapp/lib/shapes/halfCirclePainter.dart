import 'package:flutter/material.dart';

class HalfCirclePainter extends CustomPainter {
  
  final Color topColor;
  final Color bottomColor;

  HalfCirclePainter({
    this.topColor = const Color.fromARGB(0, 0, 0, 0),
    this.bottomColor = Colors.white,
  });

  @override
  void paint(Canvas canvas, Size size,) {

    Paint paintBottom = Paint()..color = bottomColor; // 위 색
    Paint paintTop = Paint()..color = topColor; // 아래 색

    // 원의 반을 그리기 위한 좌표 설정
    double radius = size.width / 2;
    Offset center = Offset(size.width / 2, size.height / 2);

    // 위쪽 반원
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), 0, 3.14, true, paintBottom);

    // 아래쪽 반원
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), 3.14, 3.14, true, paintTop);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
