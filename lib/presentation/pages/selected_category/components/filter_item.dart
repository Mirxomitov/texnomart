import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FilterItem extends StatelessWidget {
  const FilterItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Expanded(
              child: Row(children: [
            SvgPicture.asset('assets/svgs/sort_icon.svg'),
            const SizedBox(width: 8),
            Text(
              'Ommabopligi',
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ])),
          const SizedBox(width: 24),
          Expanded(
              child: Row(children: [
            SvgPicture.asset('assets/svgs/filter_icon.svg'),
            const SizedBox(width: 8),
            Text(
              'Filtrlar',
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ])),
          const Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}
