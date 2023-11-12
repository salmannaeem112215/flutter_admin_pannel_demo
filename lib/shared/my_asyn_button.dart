import 'package:flutter/material.dart';

class MyAsynButtonWidget extends StatefulWidget {
  const MyAsynButtonWidget(
      {super.key, required this.child, required this.onTap});
  final Widget Function(
    bool isDisable,
    bool isLoading,
    void Function() onAsynTap,
  ) child;
  final Future<MyErrorMessage?> Function()? onTap;

  @override
  State<MyAsynButtonWidget> createState() => _MyAsynButtonWidgetState();
}

class _MyAsynButtonWidgetState extends State<MyAsynButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.child(isDisable, isLoading, () => onAsynTap());
  }

  bool get isDisable => _isLoading == true || widget.onTap == null;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    if (_isLoading != value) {
      setState(() {
        _isLoading = value;
      });
    }
  }

  Future<void> onAsynTap() async {
    if (isLoading == false && widget.onTap != null) {
      isLoading = true;
      try {
        final error = await widget.onTap!();
        if (error != null) {
          _onError(error);
        }
      } catch (e) {
        _onError(MyErrorMessage.catchError());
      }
      isLoading = false;
    }
  }

  @protected
  void _onError(MyErrorMessage error) {}
}

class MyAsynButtonLoading extends StatelessWidget {
  const MyAsynButtonLoading({
    super.key,
    this.size,
    this.color = Colors.grey,
  });

  const MyAsynButtonLoading.small({
    super.key,
    this.color = Colors.grey,
  }) : size = 20;
  final double? size;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: CircularProgressIndicator(
        color: color,
      ),
    );
  }
}

class MyErrorMessage {
  final String title;
  final String message;
  MyErrorMessage({
    required this.title,
    required this.message,
  });

  MyErrorMessage.catchError({
    String? title,
    String? message,
  })  : title = title ?? 'Error',
        message = message ?? 'Unalble to Perform this action';
}
