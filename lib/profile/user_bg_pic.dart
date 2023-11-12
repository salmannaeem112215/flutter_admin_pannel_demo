import 'package:flutter/material.dart';

class UserBgPic extends StatelessWidget {
  // const UserBgPic({super.key, required this.url, this.size});
  const UserBgPic({super.key, required this.url});
  final String url;
  // final double? size;

  // const UserBgPic.large({super.key, required this.url}) : size = 60;
  // const UserBgPic.xlarge({super.key, required this.url}) : size = 120;
  static const ratio = 3 / 1.4;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: ratio,
      child: Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8)),
        child: Image.network(
          url,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => Icon(
            Icons.person,
            color: Colors.grey.shade800,
          ),
        ),
      ),
    );
  }
}
