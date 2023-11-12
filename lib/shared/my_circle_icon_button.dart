import 'package:flutter/material.dart';

class MyCircleIconButton extends StatelessWidget {
  const MyCircleIconButton({
    super.key,
    this.onTap,
    required this.icon,
    this.elevation = 8,
    this.radius = 50,
    this.backgroundColor = Colors.teal,
    this.foregroundColor = Colors.white70,
    this.size,
    this.height,
    this.width,
    this.message,
  });
  const MyCircleIconButton.small(
      {super.key,
      this.onTap,
      required this.icon,
      this.backgroundColor = Colors.teal,
      this.foregroundColor = Colors.white70,
      this.message,
      double factor = 1})
      : size = 10.0 * factor,
        elevation = 8,
        radius = 30 * factor,
        height = 25 * factor,
        width = 25 * factor;
  final Function()? onTap;
  final IconData icon;
  final double elevation;
  final double radius;
  final Color backgroundColor;
  final Color foregroundColor;
  final double? size;
  final String? message;

  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Tooltip(
        message: message ?? 'Remove',
        child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          onTap: onTap,
          child: Card(
            elevation: elevation,
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
            child: CircleAvatar(
              backgroundColor: backgroundColor,
              child: Icon(
                icon,
                color: foregroundColor,
                size: size,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
