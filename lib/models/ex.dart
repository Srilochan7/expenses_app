import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();
enum Category {travel, work, food, others, fees, entertainment, movie}

const CategoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight,
  Category.fees: Icons.money,
  Category.movie: Icons.movie,
  Category.entertainment: Icons.gamepad,
  Category.work: Icons.work,
  Category.others: Icons.message,
};

class Expense{
  Expense({
    required this.title,
    required this.amount, 
    required this.date,
    required this.category,
    }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate{
    return formatter.format(date);
  }
}