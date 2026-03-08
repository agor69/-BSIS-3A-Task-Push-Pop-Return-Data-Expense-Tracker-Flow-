import 'package:flutter/material.dart';
import 'add_expense_page.dart';

class ExpensesHomePage extends StatelessWidget {
  const ExpensesHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expenses Home"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AddExpensePage()),
              );

              if (result != null && result is String) {
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('Added: $result')));
              }
            },
          ),
        ],
      ),
      body: const Center(child: Text("Welcome to Expenses Home!")),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddExpensePage()),
          );

          if (result != null && result is String) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Added: $result')));
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
