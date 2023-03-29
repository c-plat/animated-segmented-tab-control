import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Provide the [TabController]
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Center(
            child: SegmentedTabControl(
              height: 40,
              radius: const Radius.circular(20),
              shadow: [BoxShadow(blurRadius: 5, color: const Color(0xff242837).withOpacity(0.25))],
              tabs: const [
                SegmentTab(
                  label: '팔로워',
                  color: Colors.white,
                  backgroundColor: Colors.grey,
                ),
                SegmentTab(
                  label: '팔로잉',
                  color: Colors.white,
                  backgroundColor: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SampleWidget extends StatelessWidget {
  const SampleWidget({
    Key? key,
    required this.label,
    required this.color,
  }) : super(key: key);

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: color, borderRadius: const BorderRadius.vertical(top: Radius.circular(10))),
      child: Text(label),
    );
  }
}
