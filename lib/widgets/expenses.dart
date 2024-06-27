// expenses.dart

import 'package:expenses_app/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:expenses_app/models/ex.dart';
import 'package:expenses_app/widgets/expenses_list/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _regEx = [
    Expense(
      title: 'Books',
      amount: 500,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Biryani',
      amount: 400,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Movie',
      amount: 350,
      date: DateTime.now(),
      category: Category.movie,
    ),
  ]; // Added missing semicolon here

  void _openAddExpenseOverlay(){
    showModalBottomSheet(context: context, builder: (ctx){
      return NewExpense();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expenses Tracker"),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          
          Text('Graph'),
          Expanded(
            child: ExpensesList(expenses: _regEx),
          ),
        ],
      ),
    );
  }
}


