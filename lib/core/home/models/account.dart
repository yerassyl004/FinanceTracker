import 'package:flutter/material.dart';

class Account {
  final Icon icon;
  final String title;
  int cash;

  Account({
    required this.cash,
    required this.icon,
    required this.title
  });
}