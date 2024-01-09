import 'package:demo_flutter/app_bar.dart';
import 'package:flutter/material.dart';

class GifScreen extends StatefulWidget {
  const GifScreen({super.key});

  final String title = 'Gif';

  @override
  State<GifScreen> createState() => _GifScreenState();
}

class _GifScreenState extends State<GifScreen> {
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
                'This is Gif image, Consume 30% CPU',
              ),
              SizedBox(
                height: 16,
              ),
              Image(
                image: AssetImage('assets/banner.gif'),
                height: 300,
                width: 300,
              )
            ],
          ),
        ));
  }
}
