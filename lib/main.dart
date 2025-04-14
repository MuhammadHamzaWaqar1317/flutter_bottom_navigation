import 'package:flutter/material.dart';
import 'package:bottom_tab_navigation/widgets/tab1.dart';
import 'package:bottom_tab_navigation/widgets/tab2.dart';

void main() {
  runApp(const TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Tabs Demo with Animation'),
          ),
          bottomNavigationBar: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
            ],
          ),
          body: const TabBarView(
            children: [
              Tab1(),
              Tab2(),
            ],
          ),
        ),
      ),
    );
  }
}
