import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/my_network_image.dart';

class UserBgPic extends StatelessWidget {
  const UserBgPic({super.key, required this.url});
  final String url;
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
        child: MyNetworkImage(
          url: url,
          errorWidget: Icon(
            Icons.person,
            color: Colors.grey.shade800,
          ),
        ),
      ),
    );
  }
}
