import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Free_Model extends StatelessWidget {
  final IconData icon;
  final String lable;
  const Free_Model({super.key, required this.icon, required this.lable});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.red,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            lable,
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
          )
        ],
      ),
    );
  }
}
