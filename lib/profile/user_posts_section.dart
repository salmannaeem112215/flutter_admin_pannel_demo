import 'package:flutter/material.dart';
import 'package:flutter_application_1/headers.dart';
import 'package:flutter_application_1/main.dart';

class UserPostSection extends StatelessWidget {
  const UserPostSection({super.key});
  @override
  Widget build(BuildContext context) {
    final List<List<dynamic>> items = [
      ['username1', 'serviceCaption1', "Post Caption 1"],
      ['username1', 'serviceCaption1', "Post Caption 2"],
      ['username1', 'serviceCaption1', "Post Caption 3"],
      ['username1', null, "Post Caption 4"],
      ['username1', null, "Post Caption 5"],
      ['username1', 'serviceCaption1', "Post Caption 6"],
      ['username1', 'serviceCaption1', "Post Caption 7"],
      ['username1', 'serviceCaption2', "Post Caption 8"],
      ['username1', 'serviceCaption3', "Post Caption 9"],
      ['username1', 'serviceCaption4', "Post Caption 10"],
    ];

    return SingleChildScrollView(
      child: Wrap(
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: items
            .map(
              (e) => RemoveWidget(
                onDelete: kDelayTime,
                factor: 1.2,
                child: (isDisable, isLoading) => PostCard(
                  username: e[0],
                  serviceCaption: e[1],
                  postCaption: e[2],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
