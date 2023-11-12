import 'package:flutter/material.dart';
import 'package:flutter_application_1/headers.dart';
import 'package:flutter_application_1/main.dart';

class UserServiceSection extends StatelessWidget {
  const UserServiceSection({super.key});
  @override
  Widget build(BuildContext context) {
    final List<List<dynamic>> items = [
      ['username1', 'serviceCaption1'],
      ['username1', 'serviceCaption2'],
      ['username1', 'serviceCaption3'],
      ['username1', 'serviceCaption4'],
      ['username1', 'serviceCaption5'],
      ['username1', 'serviceCaption6'],
      ['username1', 'serviceCaption7'],
      ['username1', 'serviceCaption8'],
      ['username1', 'serviceCaption9'],
      ['username1', 'serviceCaption10'],
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
