import 'dart:math';

import 'package:anchor_scroll_controller/anchor_scroll_controller.dart';
import 'package:demo_flutter/app_bar.dart';
import 'package:flutter/material.dart';

class ScrollToIndexScreen extends StatefulWidget {
  const ScrollToIndexScreen({super.key});

  final String title = 'ScrollToIndex';

  @override
  State<ScrollToIndexScreen> createState() => _ScrollToIndexScreenState();
}

class _ScrollToIndexScreenState extends State<ScrollToIndexScreen> {
  final int _itemsCount = 100;
  late final AnchorScrollController _scrollController;
  int _currentIndex = 0;
  int _nextIndex = 0;

  @override
  void initState() {
    super.initState();
    _nextIndex = _randomNextIndex();
    _scrollController = AnchorScrollController(
      onIndexChanged: (index, userScroll) {
        _currentIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        customTitle: widget.title,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 16)),
              child: Text('Current: ${_currentIndex.toString()}, Next: ${_nextIndex.toString()}'),
              onPressed: () {
                _onTap();
              },
            ),
            const SizedBox(
              height: 16,
            ),
            _listWidget(),
          ],
        ),
      ),
    );
  }

  Widget _listWidget() {
    return Expanded(
      child: ListView.builder(
        controller: _scrollController,
        itemCount: _itemsCount,
        itemBuilder: (context, index) => AnchorItemWrapper(
          index: index,
          controller: _scrollController,
          child: Container(
            height: 50.0 + Random().nextInt(200),
            color: Colors.primaries[index % Colors.primaries.length],
            alignment: Alignment.center,
            child: Text(index.toString(), style: const TextStyle(fontSize: 24, color: Colors.black)),
          ),
        ),
      ),
    );
  }

  void _onTap() {
    _scrollController.scrollToIndex(index: _nextIndex, scrollSpeed: 15);
    setState(() {
      _currentIndex = _nextIndex;
      _nextIndex = _randomNextIndex();
    });
  }

  int _randomNextIndex() {
    num max = _currentIndex < _itemsCount / 2 ? _itemsCount : _itemsCount / 2;
    return Random().nextInt(max.toInt());
  }
}
