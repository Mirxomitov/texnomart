import 'package:flutter/material.dart';

import '../../../../utils/commons.dart';

class OrderProductsDialog extends StatelessWidget {
  const OrderProductsDialog({super.key, required this.orderType, required this.onTap});

  final String orderType;
  final void Function(String sort) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Saralash", style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 24),
          order('-popular', context),
          const SizedBox(height: 24),
          order('-price', context),
          const SizedBox(height: 24),
          order('price', context),
        ],
      ),
    );
  }

  Widget order(String orderName, BuildContext context) {
    bool isChecked = orderName == orderType;

    return GestureDetector(
      onTap: () {
        onTap(orderName);
      },
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: isChecked ? 24 : 20,
            width: isChecked ? 24 : 20,
            decoration: BoxDecoration(
              border: Border.all(
                width: isChecked ? 5 : 3,
                color: isChecked ? Theme.of(context).primaryColor : Colors.grey.shade500,
              ),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          Text(getOrderName(orderName), style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
