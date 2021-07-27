import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  /// const and final are both immutable
  /// final can be set only once, is created when the code is compiled.
  /// i.e. final t = DateTime.now();
  /// const is a compile time constant, i.e. colour comes from when we create
  /// a new ReusableCard, which could be created at any time when app is running.
  ///
  /// colour here cannot be a simple variable, since ReusableCard is immutable
  final Color colour;
  final Widget? cardChild;
  final VoidCallback? onPress; // Or, final void Function() onPress;

  ReusableCard({required this.colour, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}












