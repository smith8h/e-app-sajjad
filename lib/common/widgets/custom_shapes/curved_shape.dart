import 'package:flutter/material.dart';

class ECurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final startCurve1 = Offset(0, size.height - 20);
    final endCurve1 = Offset(30, size.height - 20);
    path.quadraticBezierTo(startCurve1.dx, startCurve1.dy, endCurve1.dx, endCurve1.dy);

    final startCurve2 = Offset(0, size.height - 20);
    final endCurve2 = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(startCurve2.dx, startCurve2.dy, endCurve2.dx, endCurve2.dy);

    final startCurve3 = Offset(size.width, size.height - 20);
    final endCurve3 = Offset(size.width, size.height);
    path.quadraticBezierTo(startCurve3.dx, startCurve3.dy, endCurve3.dx, endCurve3.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
