import'package:flutter/material.dart';
class MyChip extends StatefulWidget {
  final String label;
  final void Function()? function;
  const MyChip({
    required this.label,
    required this.function,
    Key? key}) : super(key: key);

  @override
  State<MyChip> createState() => _MyChipState();
}

class _MyChipState extends State<MyChip> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.function,
        child: Chip(label: Text(widget.label))
    );
  }
}
