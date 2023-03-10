import 'package:flutter/material.dart';

class Brands extends StatefulWidget {
  final String whichBrand;
  final String amountAvailable;

  const Brands({
    required this.whichBrand,
    required this.amountAvailable,
    Key? key,
  }) : super(key: key);

  @override
  State<Brands> createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          width: 90,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(widget.whichBrand),
        ),

        const SizedBox(height: 20),

        Text(
          widget.amountAvailable,
          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 12
          ),
        )
      ],
    );
  }
}
