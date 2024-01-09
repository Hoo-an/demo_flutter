import 'package:flutter/material.dart';

class HtmlScreen extends StatefulWidget {
  const HtmlScreen({super.key});

  final String title = 'Html';

  @override
  State<HtmlScreen> createState() => _HtmlScreenState();
}

class _HtmlScreenState extends State<HtmlScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Html',
              ),
            ],
          ),
        ));
  }
}
