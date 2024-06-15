import 'package:flutter/material.dart';

class TrendingWidget extends StatelessWidget {
  const TrendingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Colors.white,
      ),
      // Echnsures the image respects the border radius
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Stack(children: [
          Image.network(
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              'https://www.stantec.com/content/dam/stantec/images/stock/other/0001/hospitality-trends-2800x1640.jpg'),
          Positioned(
            left: 140,
            top: 10,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color:
                      const Color.fromARGB(255, 234, 141, 134).withOpacity(0.7),
                  shape: BoxShape.circle),
              child: const Icon(
                Icons.favorite_border_sharp,
                color: Colors.white,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
