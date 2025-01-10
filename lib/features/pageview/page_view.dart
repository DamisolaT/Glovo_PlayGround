import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page View Screen"),
      ),
      body: PageView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        controller: _pageController,
        itemBuilder: (_, index) {
          return Placeholder();
        },
        itemCount: 2,
      ),
    );
  }
}
