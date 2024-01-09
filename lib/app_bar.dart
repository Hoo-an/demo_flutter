import 'package:demo_flutter/channel.dart';
import 'package:flutter/material.dart';

class SharedAppBar extends AppBar {
  final Function? onTapBack;
  final String? customTitle;
  final bool hiddenBack;
  SharedAppBar({
    this.customTitle,
    this.onTapBack,
    this.hiddenBack = false,
    Key? key,
  }) : super(
          key: key,
          title: Text(customTitle ?? ''),
          leading: _back(hiddenBack, onTapBack),
        );

  static Widget _back(bool hiddenBack, Function? onTapBack) {
    return hiddenBack
        ? const SizedBox()
        : ElevatedButton(
            style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20)),
            onPressed: () {
              if (onTapBack == null) {
                Channel.pop();
              } else {
                onTapBack.call();
              }
            },
            child: const Text('<'),
          );
  }
}
