import 'package:demo_flutter/app_bar.dart';
import 'package:demo_flutter/channel.dart';
import 'package:demo_flutter/feature_consts.dart';
import 'package:flutter/material.dart';

class FeatureScreen extends StatefulWidget {
  const FeatureScreen({super.key});

  final String title = 'Flutter feature';

  @override
  State<FeatureScreen> createState() => _FeatureScreenState();
}

class _FeatureScreenState extends State<FeatureScreen> {
  final List<String> datasource = [
    FeatureConsts.platform,
    FeatureConsts.textLineThrough,
    FeatureConsts.animation,
    FeatureConsts.gif,
    FeatureConsts.scrollToIndex,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        hiddenBack: true,
        customTitle: widget.title,
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return ListView.builder(
      itemCount: datasource.length,
      itemBuilder: (context, index) => _item(index),
    );
  }

  Widget _item(int index) {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 16)),
          child: Text(datasource[index]),
          onPressed: () {
            _onTap(index);
          },
        ),
      ),
    );
  }

  void _onTap(int index) {
    var item = datasource[index];
    Channel.push(item);
  }
}
