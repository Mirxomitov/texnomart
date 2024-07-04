import 'package:flutter/material.dart';

class MainSearchBar extends StatelessWidget {
  const MainSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      width: double.infinity,
      child: Row(
        children: [
          const Icon(Icons.search, color: Colors.grey,),
          const SizedBox(width: 12),
          Text('Sotib olish', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey))
        ],
      ),
    );
  }
}
