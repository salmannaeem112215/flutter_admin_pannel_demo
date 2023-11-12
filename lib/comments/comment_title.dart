import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/profile/user_pic.dart';
import 'package:flutter_application_1/shared/my_asyn_button.dart';

class CommentTile extends StatelessWidget {
  const CommentTile(
      {super.key, required this.username, required this.text, this.onDelete});
  final String username;
  final String text;
  final Future<MyErrorMessage?> Function()? onDelete;

  String get url => kUserPic;
  @override
  Widget build(BuildContext context) {
    return MyAsynButtonWidget(
        onTap: onDelete,
        child: (isDisable, isLoading, onAsynTap) {
          return ListTile(
            tileColor: Colors.white,
            enabled: !isDisable,
            title: Text(username),
            subtitle: Text(text),
            leading: UserPic(url: url),
            onTap: onAsynTap,
            trailing: !isLoading
                ? GestureDetector(
                    onTap: onDelete == null ? null : onAsynTap,
                    child: Icon(
                      Icons.delete,
                      color: !isDisable ? Colors.red : Colors.grey,
                    ),
                  )
                : const MyAsynButtonLoading.small(),
          );
        });
  }
}
