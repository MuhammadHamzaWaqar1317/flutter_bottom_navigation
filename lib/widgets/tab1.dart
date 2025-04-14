import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Tab1 extends StatefulWidget {
  const Tab1({super.key});

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Text("Fade In Out Animation"),
        SizedBox(height: 8),
        AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: Container(width: 200, height: 200, color: Colors.blue),
        ),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _visible = !_visible;
            });
          },
          tooltip: 'Toggle Opacity',
          child: const Icon(Icons.flip),
        ),
      ],
    );
  }
}
