import 'package:flutter/material.dart';

class HomeItemModel {
  HomeItemModel({required this.body, required this.title, required this.gradientColor, required this.primeColor, required this.bodyColor, required this.titleColor});
  final String title;
  final String body;
  final Color primeColor;
  final Color titleColor;
  final Color bodyColor;
  final Color gradientColor;
}