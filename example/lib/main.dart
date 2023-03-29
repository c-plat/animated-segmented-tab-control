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
        length: 3,
        child: Scaffold(
          body: SafeArea(
            child: Stack(
              children: [
                Container(
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: SegmentedTabControl(
                    shadow: [BoxShadow(blurRadius: 5, color: const Color(0xff242837).withOpacity(0.25))],
                    tabs: const [
                      SegmentTab(
                        label: '팔로워',
                      ),
                      SegmentTab(
                        label: '팔로잉',
                      ),
                      SegmentTab(
                        label: '요청됨',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: TabBarView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      SampleWidget(
                        label: 'FIRST PAGE',
                        color: Colors.red.shade200,
                      ),
                      SampleWidget(
                        label: 'SECOND PAGE',
                        color: Colors.blue.shade100,
                      ),
                      SampleWidget(
                        label: 'THIRD PAGE',
                        color: Colors.orange.shade200,
                      ),
                    ],
                  ),
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
