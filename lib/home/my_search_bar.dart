import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared/my_circle_icon_button.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({
    super.key,
    this.onSearch,
    this.onClear,
    this.onChanged,
    this.hintText,
  });
  final Function(String)? onSearch;
  final Function()? onClear;
  final Function(String)? onChanged;
  final String? hintText;

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  final text = TextEditingController();

  _onChange(String value) {
    if (value.isEmpty) {
      _onClear();
    } else {
      if (typing == false) {
        setTyping(true);
      }
    }
    if (widget.onChanged != null) {
      widget.onChanged!(value);
    }
  }

  _onClear() {
    text.text = '';
    setTyping(false);
    if (widget.onClear != null) {
      widget.onClear!();
    }
  }

  _onSubmitted(String value) {
    if (widget.onSearch != null) {
      widget.onSearch!(value);
    }
  }

  void setTyping(bool val) {
    if (typing != val) {
      setState(() {
        typing = val;
      });
    }
  }

  bool typing = false;
  final _hintStyle = MaterialStateProperty.resolveWith<TextStyle?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.focused)) {
        return TextStyle(
          color: Colors.grey.shade800, // Custom color for focused state
        );
      } else {
        return const TextStyle(
          color: Colors.grey, // Default color for other states
        );
      }
    },
  );
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SearchBar(
            hintText: widget.hintText,
            hintStyle: _hintStyle,
            controller: text,
            onChanged: _onChange,
            onSubmitted: _onSubmitted,
            constraints: const BoxConstraints(minHeight: 50),
            trailing: !typing
                ? null
                : [
                    Transform.rotate(
                      angle: pi / 4,
                      child: GestureDetector(
                        onTap: _onClear,
                        child: const Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
          ),
        ),
        if (typing)
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: MyCircleIconButton(
              icon: Icons.search,
              onTap: () => _onSubmitted(text.text),
            ),
          ),
      ],
    );
  }
}
