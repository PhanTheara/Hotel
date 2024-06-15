import 'package:flutter/material.dart';

class InformaationWidget extends StatelessWidget {
  final String lable;
  final IconData icon;
  const InformaationWidget({super.key, required this.lable, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              color: Colors.red,
            ),
            Text(
              lable,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
            ),
            const Icon(
              Icons.arrow_upward,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
