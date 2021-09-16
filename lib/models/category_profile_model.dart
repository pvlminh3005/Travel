import 'package:flutter/material.dart';

class CategoryProfileModel {
  final IconData icon;
  final String nameCategory;

  CategoryProfileModel({required this.icon, required this.nameCategory});
}

List<CategoryProfileModel> listCategoriesProfile = [
  CategoryProfileModel(icon: Icons.dashboard, nameCategory: 'Dashboard'),
  CategoryProfileModel(
      icon: Icons.attach_money, nameCategory: 'Payment History'),
  CategoryProfileModel(icon: Icons.emoji_events, nameCategory: 'Reward'),
  CategoryProfileModel(icon: Icons.logout, nameCategory: 'Logout'),
];
