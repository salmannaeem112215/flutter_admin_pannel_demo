import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/my_asyn_button.dart';
import 'package:flutter_application_1/shared/my_circle_icon_button.dart';

class RemoveWidget extends StatefulWidget {
  const RemoveWidget({
    super.key,
    required this.child,
    this.onDelete,
    this.message,
  });
  final Widget Function(bool isDisable, bool isLoading) child;
  final Future<MyErrorMessage?> Function()? onDelete;
  final String? message;

  @override
  State<RemoveWidget> createState() => _RemoveWidgetState();
}

class _RemoveWidgetState extends State<RemoveWidget> {
  bool isDisable = false;

  @override
  Widget build(BuildContext context) {
    return MyAsynButtonWidget(
      onTap: widget.onDelete,
      child: (isDisable, isLoading, onAsynTap) => Stack(
        children: [
          widget.child(isDisable, isLoading),
          Positioned(
            right: 0,
            child: MyCircleIconButton.small(
              icon: Icons.remove,
              backgroundColor: isDisable ? Colors.grey : Colors.red,
              message: widget.message,
              onTap: isDisable ? null : onAsynTap,
            ),
          ),
        ],
      ),
    );
  }
}
