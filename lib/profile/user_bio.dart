import 'package:flutter/material.dart';

class UserBio extends StatelessWidget {
  const UserBio({
    super.key,
    required this.bio,
  });

  final String bio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 24, top: 8, bottom: 8),
      child: Text(
        bio,
        textAlign: TextAlign.center,
      ),
    );
  }
}
