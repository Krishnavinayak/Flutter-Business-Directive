import 'dart:ui';

import 'package:flutter/material.dart';

class CategoryItem
{
  final IconData icon;
  final String label;
  final Color color;

  CategoryItem({
    required this.icon,
    required this.label,
    required this.color,
  });
}
final List<CategoryItem> categories = [
    CategoryItem(icon: Icons.restaurant, label: 'Food', color: Color(0xFFE57373)),
    CategoryItem(icon: Icons.fitness_center, label: 'Fitness', color: Color(0xFFE57373)),
    CategoryItem(icon: Icons.favorite, label: 'Health', color: Color(0xFFE57373)),
    CategoryItem(icon: Icons.face, label: 'Beauty', color: Color(0xFFE57373)),
    CategoryItem(icon: Icons.palette, label: 'Art', color: Color(0xFFE57373)),
    CategoryItem(icon: Icons.local_shipping, label: 'Trade', color: Color(0xFFE57373)),
    CategoryItem(icon: Icons.local_dining, label: 'Meat', color: Color(0xFFE57373)),
    CategoryItem(icon: Icons.store, label: 'Retailers', color: Color(0xFFE57373)),
    CategoryItem(icon: Icons.shopping_cart, label: 'Market', color: Color(0xFFE57373)),
    CategoryItem(icon: Icons.more_horiz, label: 'More', color: Color(0xFFE57373)),
  ];