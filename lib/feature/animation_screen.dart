import 'package:demo_flutter/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:marquee_text/marquee_direction.dart';
import 'package:marquee_text/marquee_text.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  final String title = 'Animation';

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
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
                'Similar to this type of continuous animation \nThe CPU is high',
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                color: Colors.green,
                width: 160,
                child: const MarqueeText(
                  text: TextSpan(
                    text: 'This is Marquee Text: Long text Long text Long text Long text Long text',
                  ),
                  speed: 90,
                  textDirection: TextDirection.rtl,
                  marqueeDirection: MarqueeDirection.ltr,
                ),
              )
            ],
          ),
        ));
  }
}
