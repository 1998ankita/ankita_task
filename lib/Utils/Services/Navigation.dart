import 'package:flutter/material.dart';

Future push({
  required BuildContext context,
  required Widget screen,
}) async {
  print('presse kjhn d');
  return Navigator.push(context, MaterialPageRoute(builder: (context) {
    return screen;
  }));
}

Future pushReplacement({
  required BuildContext context,
  required Widget screen,
}) async {
  return Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) {
        return screen;
      }));
}


PageRouteBuilder createPageRoute(Widget page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = 0.0;
      const end = 1.0;
      const curve = Curves.bounceInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      var opacityAnimation = animation.drive(tween);

      return FadeTransition(
        opacity: opacityAnimation,
        child: child,
      );
    },
  );
}
