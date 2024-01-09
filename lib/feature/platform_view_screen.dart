import 'dart:io';

import 'package:demo_flutter/app_bar.dart';
import 'package:demo_flutter/channel.dart';
import 'package:demo_flutter/feature_consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlatformViewScreen extends StatefulWidget {
  const PlatformViewScreen({super.key});

  final String title = 'PlatformView';

  @override
  State<PlatformViewScreen> createState() => _PlatformViewScreenState();
}

class _PlatformViewScreenState extends State<PlatformViewScreen> {
  bool isShowPlatformView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SharedAppBar(
          customTitle: widget.title,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'In the Engine group and in a different Engine\nRemove Platform View from the first Engine and use it again in the next Platform View, resulting in a crash',
              ),
              const SizedBox(
                height: 16,
              ),
              _platfromView(),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 16)),
                child: const Text('On Remove'),
                onPressed: () {
                  _onTapRemove();
                },
              ),
              const SizedBox(
                height: 16,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 16)),
                child: const Text('Open Next Platform Screen'),
                onPressed: () {
                  _onTapNextPage();
                },
              ),
            ],
          ),
        ));
  }

  Widget _platfromView() {
    if (!Platform.isIOS || !isShowPlatformView) {
      return const SizedBox();
    }
    return const SizedBox(
      height: 300,
      width: 300,
      child: UiKitView(
        viewType: 'com.demo.platform.webview',
        creationParams: {'urlString': 'https://www.youtube.com/embed/gCHKjDDJZN0?autohide=1'},
        creationParamsCodec: StandardMessageCodec(),
      ),
    );
  }

  void _onTapRemove() {
    setState(() {
      isShowPlatformView = false;
    });
  }

  void _onTapNextPage() {
    Channel.push(FeatureConsts.platform);
  }
}
