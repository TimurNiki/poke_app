import 'package:flutter/material.dart';

class PokeImageWidget extends StatelessWidget {
  const PokeImageWidget({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    late Widget widget;
    widget = Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.orange,
          
        ),
        child: child,
      ),
    );
    return widget;
  }
}
