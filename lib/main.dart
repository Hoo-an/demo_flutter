import 'package:demo_flutter/entry_point_route.dart';
import 'package:demo_flutter/feature/animation_screen.dart';
import 'package:demo_flutter/feature/gif_screen.dart';
import 'package:demo_flutter/feature/platform_view_screen.dart';
import 'package:demo_flutter/feature/scroll_to_index_screen.dart';
import 'package:demo_flutter/feature/text_line_through_screen.dart';
import 'package:flutter/material.dart';

import 'feature/feature_screen.dart';

void main() => runApp(const MyApp());

@pragma('vm:entry-point')
void demoFlutterFeatured(List<String>? args) => runApp(const MyApp(initialRouteName: EntryPointRoute.featured));

@pragma('vm:entry-point')
void demoTextLineThrough(List<String>? args) => runApp(const MyApp(initialRouteName: EntryPointRoute.textLineThrough));

@pragma('vm:entry-point')
void demoGif(List<String>? args) => runApp(const MyApp(initialRouteName: EntryPointRoute.gif));

@pragma('vm:entry-point')
void demoAnimation(List<String>? args) => runApp(const MyApp(initialRouteName: EntryPointRoute.animation));

@pragma('vm:entry-point')
void demoPlatformView(List<String>? args) => runApp(const MyApp(initialRouteName: EntryPointRoute.platformView));

@pragma('vm:entry-point')
void demoScrollToIndex(List<String>? args) => runApp(const MyApp(initialRouteName: EntryPointRoute.scrollToIndex));

class MyApp extends StatelessWidget {
  final String? initialRouteName;
  const MyApp({super.key, this.initialRouteName});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: route(context),
    );
  }

  Widget route(BuildContext context) {
    switch (initialRouteName) {
      case EntryPointRoute.featured:
        return const FeatureScreen();
      case EntryPointRoute.textLineThrough:
        return const TextLineThroughScreen();
      case EntryPointRoute.gif:
        return const GifScreen();
      case EntryPointRoute.animation:
        return const AnimationScreen();
      case EntryPointRoute.platformView:
        return const PlatformViewScreen();
      case EntryPointRoute.scrollToIndex:
        return const ScrollToIndexScreen();
      default:
        return const FeatureScreen();
    }
  }
}
