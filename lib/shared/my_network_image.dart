import 'package:flutter/material.dart';

class MyNetworkImage extends StatelessWidget {
  const MyNetworkImage({
    super.key,
    required this.url,
    this.errorWidget,
    this.fit = BoxFit.cover,
  });
  final String url;
  final Widget? errorWidget;
  final BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: fit,
      errorBuilder: (context, error, stackTrace) =>
          errorWidget ?? const SizedBox.shrink(),
    );
  }
}
