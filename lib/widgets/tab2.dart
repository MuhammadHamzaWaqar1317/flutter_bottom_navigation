import 'package:flutter/material.dart';
import 'dart:math';

class Tab2 extends StatefulWidget {
  const Tab2({super.key});

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Animating Properties of Container"),
        SizedBox(height: 9,),
        AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
        ),
        SizedBox(height: 16,),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              final random = Random();

              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();

              _color = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1,
              );

              _borderRadius = BorderRadius.circular(
                random.nextInt(100).toDouble(),
              );
            });
          },
          child: const Icon(Icons.play_arrow),
        ),
      ],
    );
  }
}
