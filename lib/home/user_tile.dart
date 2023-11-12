import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile/user_pic.dart';
import 'package:flutter_application_1/shared/my_asyn_button.dart';

class UserTile extends StatefulWidget {
  const UserTile({
    super.key,
    required this.url,
    required this.name,
    required this.onTap,
    this.onDelete,
  });

  final String url;
  final String name;
  final Function()? onTap;
  final Future<MyErrorMessage?> Function()? onDelete;

  @override
  State<UserTile> createState() => _UserTileState();
}

class _UserTileState extends State<UserTile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MyAsynButtonWidget(
        onTap: widget.onDelete,
        child: (isDisable, isLoading, onAsynTap) {
          print(
              "Is Disable $isDisable , isLoading $isLoading onAsyncTap $onAsynTap");
          return ListTile(
            tileColor: Colors.white,
            enabled: !isDisable,
            title: Text(widget.name),
            leading: UserPic(url: widget.url),
            onTap: widget.onTap,
            trailing: !isLoading
                ? GestureDetector(
                    onTap: widget.onDelete == null ? null : onAsynTap,
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
