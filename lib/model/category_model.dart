import 'package:flutter/material.dart';

class CategoryModel {
  final int id;
  final String Name;
  final Icon icon;

  CategoryModel({required this.id, required this.Name, required this.icon});
}

final List<CategoryModel> ListCategory = [
  CategoryModel(
      id: 1,
      Name: 'Restaurantes',
      icon: const Icon(
        Icons.restaurant_menu,
        color: Colors.red,
      )),
  CategoryModel(
      id: 2,
      Name: 'Car Wash',
      icon: const Icon(
        Icons.local_car_wash,
        color: Colors.red,
      )),
  CategoryModel(
      id: 3,
      Name: 'Deliery',
      icon: const Icon(
        Icons.drive_file_move,
        color: Colors.red,
      )),
  CategoryModel(
      id: 4,
      Name: 'Tech Shop',
      icon: const Icon(
        Icons.shop,
        color: Colors.red,
      )),
  CategoryModel(
      id: 5,
      Name: 'Movers',
      icon: const Icon(
        Icons.move_to_inbox_sharp,
        color: Colors.red,
      )),
  CategoryModel(
      id: 6,
      Name: 'Petrol Station',
      icon: const Icon(
        Icons.local_car_wash,
        color: Colors.red,
      )),
  CategoryModel(
      id: 7,
      Name: 'Hotel',
      icon: const Icon(
        Icons.local_hotel_sharp,
        color: Colors.red,
      )),
  CategoryModel(
      id: 8,
      Name: 'Home',
      icon: const Icon(
        Icons.local_car_wash,
        color: Colors.red,
      ))
];
