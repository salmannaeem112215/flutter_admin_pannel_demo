import 'package:flutter/material.dart';

class UserPic extends StatelessWidget {
  const UserPic({super.key, required this.url, this.size});
  final String url;
  final double? size;

  const UserPic.large({super.key, required this.url}) : size = 60;
  const UserPic.xlarge({super.key, required this.url}) : size = 120;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        child: Container(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.network(
            url,
            errorBuilder: (context, error, stackTrace) => Icon(
              Icons.person,
              color: Colors.grey.shade800,
            ),
          ),
        ),
      ),
    );
  }
}
