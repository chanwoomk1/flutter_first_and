import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Paint 설정
    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    // 경로 그리기
    Path path_0 = Path();
  path_0.moveTo(size.width * -0.00, size.height * 0.50);  // -0.0006643 -> -0.00, 0.4991400 -> 0.50
  path_0.quadraticBezierTo(size.width * 0.14, size.height * 0.40, 
    size.width * 0.39, size.height * 0.40);  // 0.1422714 -> 0.14, 0.4024600 -> 0.40, 0.3918786 -> 0.39
  path_0.cubicTo(size.width * 0.40, size.height * 0.42, 
    size.width * 0.42, size.height * 0.58, 
    size.width * 0.43, size.height * 0.60);  // 0.4013000 -> 0.40, 0.4240000 -> 0.42, 0.4186714 -> 0.42, 0.5786800 -> 0.58
  path_0.cubicTo(size.width * 0.46, size.height * 0.71, 
    size.width * 0.54, size.height * 0.70, 
    size.width * 0.57, size.height * 0.60);  // 0.4635643 -> 0.46, 0.7067200 -> 0.71, 0.5359500 -> 0.54, 0.7029600 -> 0.70
  path_0.cubicTo(size.width * 0.58, size.height * 0.58, 
    size.width * 0.60, size.height * 0.42, 
    size.width * 0.61, size.height * 0.40);  // 0.5804071 -> 0.58, 0.5785000 -> 0.58, 0.5983786 -> 0.60, 0.4235000 -> 0.42
  path_0.quadraticBezierTo(size.width * 0.85, size.height * 0.40, 
    size.width * 1.00, size.height * 0.50);  // 0.8548786 -> 0.85, 0.4016200 -> 0.40, 0.9997000 -> 1.00, 0.5018200 -> 0.50

    path_0.lineTo(size.width * 1.00, size.height * 1.0);  
    path_0.lineTo(size.width * 0.00, size.height * 1.0); 
    path_0.lineTo(size.width * 0.00, size.height * 0.80); 

    canvas.drawPath(path_0, paint_fill_0);  // 채우기
    canvas.drawPath(path_0, paint_stroke_0); // 테두리
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Custombar extends StatefulWidget {
  const Custombar({super.key});

  @override
  State<Custombar> createState() => _CustombarState();
}

class _CustombarState extends State<Custombar> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.width*0.3),
      painter: CirclePainter(),
    );
  }
}
