import 'package:e_store/features/shop/screens/home/home.dart';
import 'package:e_store/features/shop/screens/wishlist/wish_list.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:e_store/features/shop/screens/store/store.dart';

class NavigationController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishListScreen(),
    Container(color: Colors.blue),
  ];
}
