import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/my_asyn_button.dart';
import 'package:flutter_application_1/shared/remove_widget.dart';

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
            leading: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image.network(
                  widget.url,
                  errorBuilder: (context, error, stackTrace) => Icon(
                    Icons.person,
                    color: Colors.grey.shade800,
                  ),
                ),
              ),
            ),
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
