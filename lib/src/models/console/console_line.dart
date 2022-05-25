import 'package:flutter/material.dart';

class ConsoleLine {
  const ConsoleLine.info(this.text) : color = Colors.green;
  const ConsoleLine.stdout(this.text) : color = Colors.white;
  const ConsoleLine.stderr(this.text) : color = Colors.deepOrange;

  final String text;

  final Color color;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ConsoleLine && other.text == text && other.color == color;
  }

  @override
  int get hashCode => text.hashCode ^ color.hashCode;

  @override
  String toString() => 'ConsoleLine(text: $text, color: $color)';
}
