import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texnomart/presentation/blocs/selected_category/selected_category_bloc.dart';

import '../../../../utils/commons.dart';
import 'dialog.dart';

class FilterItem extends StatelessWidget {
  const FilterItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (ctx) => Dialog(
                  backgroundColor: Colors.white,
                  surfaceTintColor: Colors.transparent,
                  child: OrderProductsDialog(
                    orderType: context.read<SelectedCategoryBloc>().state.sort,
                    onTap: (orderType) {
                      context.read<SelectedCategoryBloc>().add(ChangeSort(sort: orderType));
                      Navigator.pop(ctx);
                    },
                  ),
                ),
              );
            },
            child: Row(
              children: [
                SvgPicture.asset('assets/svgs/sort_icon.svg'),
                const SizedBox(width: 8),
                Text(
                  getOrderName(context.read<SelectedCategoryBloc>().state.sort),
                  style: Theme.of(context).textTheme.bodyLarge,
                )
              ],
            ),
          ),
          const SizedBox(width: 24),
          Row(children: [
            SvgPicture.asset('assets/svgs/filter_icon.svg'),
            const SizedBox(width: 8),
            Text(
              'Filtrlar',
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ]),
          Spacer(),
          const Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}
