import 'package:flutter/material.dart';

class SelectedCategory extends StatelessWidget {
  const SelectedCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 56,
          child: ListView.builder(
            itemBuilder: (_, __) => Container(
              child: const Text('text'),
            ),
          ),
        ),
        const Row(
          children: [
            Expanded(
              child: Row(
                children: [],
              ),
            ),
            Expanded(child: Row()),
            Icon(Icons.add),
          ],
        )
      ],
    );
  }
}
