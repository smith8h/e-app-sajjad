import 'package:e_store/screens/home/home.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:e_store/screens/store/store.dart';

class NavigationController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    Container(color: Colors.orange),
    Container(color: Colors.blue),
  ];
}
