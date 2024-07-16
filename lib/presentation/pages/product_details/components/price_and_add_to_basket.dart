import 'package:flutter/material.dart';
import 'package:texnomart/utils/to_value.dart';

class PriceAndAddToBasket extends StatelessWidget {
  const PriceAndAddToBasket({super.key, required this.price, required this.onTap, required this.added});

  final VoidCallback onTap;
  final String price;
  final bool added;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 0),
          ),
        ],
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${price.toValue()} so'm",
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: added ? Colors.white : Theme.of(context).primaryColor ,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Theme.of(context).primaryColor)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.shopping_cart_sharp),
                  const SizedBox(width: 8),
                  Text(
                    added ? "Savatchaga qo'shildi" : "Savatchaga qo'shish",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
