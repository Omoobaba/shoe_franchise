import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String category;

  const Categories({
    required this.category,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      category,
      style: TextStyle(
        color: Colors.grey[500],
        fontSize: 16,
      ),
    );
  }
}