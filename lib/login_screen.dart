import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math' as math;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget _topWidget(double screenWidth) {
    return Transform.rotate(
      angle: -35 * math.pi / 180,
      child: Container(
        width: 1.2 * screenWidth,
        height: 1.2 * screenWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(150),
          gradient: LinearGradient(
            begin: Alignment(-0.2, -0.8),
            end: Alignment.bottomCenter,
            colors: [Color(0x007CBFCF), Color(0xB316BFC4)],
          ),
        ),
      ),
    );
  }

  Widget _bottomWidget(double screenWidth) {
    return Container(
      height: 1.5 * screenWidth,
      width: 1.5 * screenWidth,
      decoration: BoxDecoration(
        shape: .circle,
        gradient: LinearGradient(
          begin: Alignment(0.6, -1.1),
          end: Alignment(0.7, 0.8),
          colors: [Color(0xDB4BE8CC), Color(0x005CDBCF)],
        ),
      ),
    );
  }

  Widget _centerWidget({required Size size}) {
    final width = size.width;
    final height = size.height;
    final path = Path();
    path.moveTo(0, 0.17 * height);
    path.cubicTo(
      0.23 * width,
      0.12 * height,
      0.36 * width,
      0.13 * height,
      0.48 * width,
      0.14 * height,
    );
    path.cubicTo(
      0.6 * width,
      0.15 * height,
      0.91 * width,
      0.23 * height,
      0.94 * width,
      0.34 * height,
    );
    path.cubicTo(
      0.97 * width,
      0.46 * height,
      0.74 * width,
      0.46 * height,
      0.66 * width,
      0.56 * height,
    );
    path.cubicTo(
      0.58 * width,
      0.66 * height,
      0.72 * width,
      0.73 * height,
      0.68 * width,
      0.81 * height,
    );
    path.cubicTo(
      0.63 * width,
      0.89 * height,
      0.45 * width,
      0.97 * height,
      0.3 * width,
      height,
    );
    path.lineTo(0, height);
    path.close();
    return Stack(
      children: [
        CustomPaint(painter: CustompainterWidget(path: path)),
        ClipPath(
          clipper: CenterWidgetClipper(path: path),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0x803DE896), Color(0x4D76E3AE)],
                  begin: Alignment(1, -0.6),
                  end: Alignment(-1, 0.8),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(top: -160, left: -30, child: _topWidget(screenSize.width)),
          Positioned(
            bottom: -180,
            left: -40,
            child: _bottomWidget(screenSize.width),
          ),
          _centerWidget(size: screenSize),
        ],
      ),
    );
  }
}

class CenterWidgetClipper extends CustomClipper<Path> {
  final Path path;

  CenterWidgetClipper({required this.path});

  @override
  Path getClip(Size size) {
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class CustompainterWidget extends CustomPainter {
  final Path path;

  CustompainterWidget({required this.path});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..imageFilter = ImageFilter.blur(sigmaX: 10, sigmaY: 10)
      ..color = Colors.black;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}
