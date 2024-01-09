import 'package:demo_flutter/app_bar.dart';
import 'package:flutter/material.dart';

class TextLineThroughScreen extends StatefulWidget {
  const TextLineThroughScreen({super.key});

  final String title = 'TextLineThrough';

  @override
  State<TextLineThroughScreen> createState() => _TextLineThroughScreenState();
}

class _TextLineThroughScreenState extends State<TextLineThroughScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SharedAppBar(
          customTitle: widget.title,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                '1.Normal display of Chinese and English fonts. \n2.Mixed Chinese and English not on baseline. \n3.Custom font baseline is not centered',
                style: TextStyle(fontSize: 14.0),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                '这是一条删除线',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'This is Line Through \$0.99',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'This is 删除线',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  fontSize: 24.0,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Custom font \$0.99',
                style: TextStyle(
                  fontFamily: 'GT-Walsheim',
                  decoration: TextDecoration.lineThrough,
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
        ));
  }
}
