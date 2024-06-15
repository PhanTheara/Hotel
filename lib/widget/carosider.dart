import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  final List<String> images = [
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/fb/7d/4d/night-hotel-bangkok-sukhumvit.jpg?w=700&h=-1&s=1',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR13j2HM3bmEIH_w0qQKzcisWLjX-lWTO8qHAwHnXv5lHrvsxB5Q8jlZKU45bUjJrxvO3k&usqp=CAU',
    'https://www.americanexpress.com/en-ch/travel/discover/img/noAd/home-credit.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXrztotvM-pz4MpGO24Y7HUPTY4s5DJaQa0ufNhrsFGJXNShatZ2Xc5xVHjIMjlOOPubw&usqp=CAU',
    'https://www.forbes.com/advisor/wp-content/uploads/2020/07/pexels-photo-258154-e1603866309719.jpeg',
  ];

  final List<String> captions = [
    'Night Hotel Bangkok',
    'Beautiful Sunset',
    'Home Credit',
    'Mountain View',
    'Traveling Adventure',
  ];

  SliderWidget({super.key});

  @override
  State<SliderWidget> get createState => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 150,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            scrollDirection: Axis.horizontal,
          ),
          items: widget.images.asMap().entries.map((entry) {
            int index = entry.key;
            String imageUrl = entry.value;
            return Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      width: 1000.0,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10.0,
                  left: 200.0,
                  right: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(137, 198, 195, 195),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 10.0,
                    ),
                    child: Center(
                      child: Text(
                        widget.captions[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.images.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => setState(() {
                _current = entry.key;
              }),
              child: Container(
                width: 20,
                height: 5,
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 2.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? const Color.fromARGB(255, 109, 194, 220)
                          : const Color.fromARGB(255, 98, 180, 224))
                      .withOpacity(_current == entry.key ? 0.9 : 0.4),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
