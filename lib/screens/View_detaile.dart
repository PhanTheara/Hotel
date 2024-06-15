import 'package:flutter/material.dart';
import 'package:hotel_app/model/Free_Model.dart';
import 'package:hotel_app/widget/imformation_model.dart';

class ViewWidget extends StatelessWidget {
  final List<String> images = [
    'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/29/fb/7d/4d/night-hotel-bangkok-sukhumvit.jpg?w=700&h=-1&s=1',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR13j2HM3bmEIH_w0qQKzcisWLjX-lWTO8qHAwHnXv5lHrvsxB5Q8jlZKU45bUjJrxvO3k&usqp=CAU',
    'https://www.americanexpress.com/en-ch/travel/discover/img/noAd/home-credit.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXrztotvM-pz4MpGO24Y7HUPTY4s5DJaQa0ufNhrsFGJXNShatZ2Xc5xVHjIMjlOOPubw&usqp=CAU',
    'https://www.forbes.com/advisor/wp-content/uploads/2020/07/pexels-photo-258154-e1603866309719.jpeg',
  ];
  ViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 245, 245),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leadingWidth: 100,
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey.withOpacity(0.7)),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  )),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.withOpacity(0.7)),
                  child: const Icon(
                    Icons.upload_outlined,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 200, 199, 199)
                          .withOpacity(0.7)),
                  child: const Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            expandedHeight: 250,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
                background: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Image.network(fit: BoxFit.fill, images[index]);
              },
            )),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: Container(
                height: 30,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(33),
                      topRight: Radius.circular(33)),
                  color: Color.fromARGB(255, 250, 245, 245),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Hotel President',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 19),
                      ),
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18)),
                        child: const Center(
                          child: Text(
                            'Open New',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w700,
                                fontSize: 14),
                          ),
                        ),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                      Text(
                        'La Mercedes, Carcas',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(
                        '4.85(2.309)',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InformaationWidget(lable: 'Contact', icon: Icons.phone),
                        SizedBox(
                          width: 10,
                        ),
                        InformaationWidget(
                            lable: 'locations', icon: Icons.location_on_sharp),
                        SizedBox(
                          height: 10,
                        ),
                        InformaationWidget(lable: 'Meue', icon: Icons.menu_book)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.timer,
                                    color: Colors.green,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Open New  Closes at 03:00 AM',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  SizedBox(
                                    height: 18,
                                    width: 18,
                                    child: Image(
                                        image: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY3I-F-eV6MGCQMUfZg16OeeiTPgHFlRgHVLNDsorFQLO1khwoWhDmSeOVpphYwY4BM2Q&usqp=CAU')),
                                  )
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      Text(
                        'Description',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 19),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    children: [
                      RichText(
                        text: const TextSpan(
                          text:
                              'Rooms come with dark wood furnishings and neutral wall colours. Included in each ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '..Read more',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Free_Model(
                        lable: 'Fast Wifi',
                        icon: Icons.wifi,
                      ),
                      Free_Model(
                        lable: 'Car Park',
                        icon: Icons.car_crash_outlined,
                      ),
                      Free_Model(
                        lable: 'Breakfast',
                        icon: Icons.free_breakfast_outlined,
                      ),
                      Free_Model(
                        lable: 'Gym',
                        icon: Icons.sports_gymnastics_outlined,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image.network(
                            fit: BoxFit.cover,
                            'https://i.pinimg.com/564x/64/8c/6f/648c6fbc2b4da9c936d70d0468d6d880.jpg',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image.network(
                            fit: BoxFit.cover,
                            'https://i0.wp.com/therealblackcarriebradshaw.com/wp-content/uploads/2023/03/velassaru-1-8943.jpg?resize=600%2C401&ssl=1',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image.network(
                            fit: BoxFit.cover,
                            'https://i.pinimg.com/170x/95/81/c7/9581c77345ba79644bbc3c7792383ce7.jpg',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Stack(children: [
                            Image.network(
                              height: double.infinity,
                              fit: BoxFit.fill,
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5CIf4itFWbZixTltAIKIh4Swx0mdjsSiMd4YEC1pMK1DxQ22AKP4cU3y-u0sVVgPDl2Y&usqp=CAU',
                            ),
                            const Center(
                                child: Text(
                              '+11',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ))
                          ]),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 50,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '\$50.0', // Your price text
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'night',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                ),
              ),
              const SizedBox(
                width: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  // Your onPressed action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Background color
                ),
                child: const Text(
                  'Book Now',
                  style: TextStyle(
                    color: Colors.white, // Text color
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
