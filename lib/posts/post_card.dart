import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/shared/my_network_image.dart';
import 'package:flutter_application_1/shared/my_text.dart';

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
    required this.postCaption,
    this.serviceCaption,
    required this.username,
  });

  final String postCaption;
  final String? serviceCaption;
  final String username;

  get url => kUserPic;

  void onTap() {
    // TODO: go to Post Screen / Update Screen
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(12);
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
        child: Container(
          width: 150,
          decoration:
              BoxDecoration(color: Colors.white, borderRadius: borderRadius),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 3 / 4,
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: borderRadius,
                  ),
                  child: MyNetworkImage(url: url),
                ),
              ),
              MyText(text: postCaption),
              if (serviceCaption != null) MyText(text: serviceCaption!),
            ],
          ),
        ),
      ),
    );
  }
}
