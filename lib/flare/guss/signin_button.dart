import 'package:flutter/material.dart';

typedef PressCallback = void Function();

class SigninButton extends StatelessWidget {
  final Widget child;
  final Gradient gradient;
  final double width;
  final double height;
  final PressCallback onPressed;

  const SigninButton({
    Key key,
    @required this.child,
    this.gradient,
    this.width = double.infinity,
    this.height = 50.0,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 50.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          gradient: const LinearGradient(
            colors: <Color>[
              Color.fromRGBO(160, 92, 147, 1.0),
              Color.fromRGBO(115, 82, 135, 1.0)
            ],
          )),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onPressed,
            child: Center(
              child: child,
            )),
      ),
    );
  }
}
