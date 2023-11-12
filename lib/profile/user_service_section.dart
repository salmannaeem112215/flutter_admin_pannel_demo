import 'package:flutter/material.dart';
import 'package:flutter_application_1/headers.dart';
import 'package:flutter_application_1/main.dart';

class UserServiceSection extends StatelessWidget {
  const UserServiceSection({super.key});
  @override
  Widget build(BuildContext context) {
    final List<List<dynamic>> items = [
      ['username1', 'serviceCaption1'],
      ['username2', 'serviceCaption2'],
      ['username3', 'serviceCaption3'],
      ['username4', 'serviceCaption4'],
      ['username5', 'serviceCaption5'],
      ['username6', 'serviceCaption6'],
      ['username7', 'serviceCaption7'],
      ['username8', 'serviceCaption8'],
      ['username9', 'serviceCaption9'],
      ['username10', 'serviceCaption10'],
    ];

    return SingleChildScrollView(
      child: Wrap(
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: items
            .map(
              (e) => RemoveWidget(
                onDelete: kDelayTime,
                factor: 1.2,
                child: (isDisable, isLoading) => ServiceCard(
                  username: e[0],
                  serviceCaption: e[1],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
