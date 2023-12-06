import 'package:e_store/features/shop/screens/home.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class NavigationController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(color: Colors.purple),
    Container(color: Colors.orange),
    Container(color: Colors.blue),
  ];
}
