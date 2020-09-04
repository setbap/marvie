import 'package:flutter/material.dart';

class AnimatedDots extends StatefulWidget {
  final PageController controller;

  AnimatedDots({@required this.controller});

  @override
  _AnimatedDotsState createState() => _AnimatedDotsState();
}

class _AnimatedDotsState extends State<AnimatedDots> {
  double page = 0;

  @override
  void initState() {
    widget.controller.addListener(() {
      setState(() {
        page = widget.controller.page;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 8,
      child: Stack(
        fit: StackFit.expand,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xFF475E69),
                ),
              ),
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xFF475E69),
                ),
              ),
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Color(0xFF475E69),
                ),
              ),
            ],
          ),
          Positioned(
            child: Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color(0xFF40DF9F),
              ),
            ),
            left: 16 * page,
          ),
        ],
      ),
    );
  }
}
