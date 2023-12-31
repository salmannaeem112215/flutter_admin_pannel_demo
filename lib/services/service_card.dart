import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/shared/my_network_image.dart';
import 'package:flutter_application_1/shared/my_text.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.serviceCaption,
    required this.username,
  });

  final String serviceCaption;
  final String username;

  get url => kUserPic;

  void onTap() {
    // TODO: go to Service Screen
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          width: 250,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 4 / 3,
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: MyNetworkImage(url: url),
                ),
              ),
              MyText(text: serviceCaption),
            ],
          ),
        ),
      ),
    );
  }
}
