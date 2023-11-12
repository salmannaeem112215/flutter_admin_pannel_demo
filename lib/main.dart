import 'package:flutter/material.dart';
import 'package:flutter_application_1/comments/comment_title.dart';
import 'package:flutter_application_1/profile/user_pic.dart';
import 'package:flutter_application_1/profile/user_posts_section.dart';
import 'package:flutter_application_1/profile/user_updates_section.dart';

import 'headers.dart';

const kUserPic = 'https://avatars.githubusercontent.com/u/101444405';
get kDelayTime => () async {
      await Future.delayed(const Duration(seconds: 1));
    };

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: Center(
          child: Container(
              width: 300,
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Expanded(child: UserServiceSection()),
                  // Expanded(child: UserPostSection()),
                  // Expanded(child: UserUpdateSection()),
                  CommentTile(
                    onDelete: kDelayTime,
                    username: 'user8',
                    text: 'Hi Hello Nimasteahcfsd fhsjkafh sjkafh wjklfhsd ',
                  )
                ],
              )),
        ),
      ),
    );
  }
}














   // const MySearchBar(hintText: "Search users..."),
                // UserTile(
                //   url: 'https://avatars.githubusercontent.com/u/101444405',
                //   name: 'salman',
                //   onTap: () {},
                // ),
                // const MyListHeader(text: "1 March, 2023"),
                // UserTile(
                //   url: 'https://avatars.github1usercontent.com/u/101444405',
                //   name: 'salman',
                //   onTap: () {},
                //   onDelete: () async {
                //     await Future.delayed(const Duration(seconds: 1));
                //   },
                // ),
                // UserTile(
                //   url: 'https://avatars.github1usercontent.com/u/101444405',
                //   name: 'salman',
                //   onTap: () {},
                //   onDelete: () async {
                //     await Future.delayed(const Duration(seconds: 1));
                //   },
                // ),
                // const MyListHeader(text: "1 March, 2023"),
                // UserTile(
                //   url: 'https://avatars.github1usercontent.com/u/101444405',
                //   name: 'salman',
                //   onTap: () {},
                //   onDelete: () async {
                //     await Future.delayed(const Duration(seconds: 1));
                //   },
                // ),
                // RemoveWidget(
                //   onDelete: () async {
                //     await Future.delayed(const Duration(seconds: 1));
                //   },
                //   message: '',
                //   child: (isDisable, isLoading) => UserTile(
                //     url: 'https://avatars.github1usercontent.com/u/101444405',
                //     name: 'salman',
                //     onTap: () {},
                //     onDelete: isDisable
                //         ? null
                //         : () async {
                //             await Future.delayed(const Duration(seconds: 1));
                //           },
                //   ),
                // ),
                // UserPic(url: kUserPic),
                // const MyListHeader(text: 'Profile Pic'),
                // RemoveWidget.medium(
                //   message: "Remove Profile Pic",
                //   onDelete: kDelayTime,
                //   child: (isDisable, isLoading) =>
                //       UserPic.xlarge(url: kUserPic),
                // ),
                // const MyListHeader(text: 'Background Pic'),
                // RemoveWidget.medium(
                //   message: "Remove Background Pic",
                //   onDelete: kDelayTime,
                //   child: (isDisable, isLoading) => UserBgPic(url: kUserPic),
                // ),

                // const MyListHeader(text: 'User Bio'),
                // RemoveWidget(
                //   message: "Remove User Bio",
                //   onDelete: kDelayTime,
                //   child: (isDisable, isLoading) => UserBio(
                //       bio: 'asdhsajdhksa hsdajkd hsakjdh sakjdhsakld'),
                // ),