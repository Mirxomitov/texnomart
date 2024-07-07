import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../utils/status.dart';
import '../../blocs/selected_category/selected_category_bloc.dart';
import 'components/chips.dart';
import 'components/filter_item.dart';
import 'components/items.dart';

class SelectedCategory extends StatelessWidget {
  const SelectedCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SelectedCategoryBloc, SelectedCategoryState>(
      listener: (context, state) {},
      builder: (context, state) {
        return BlocConsumer<SelectedCategoryBloc, SelectedCategoryState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: Text(state.chips?.data.parent.name ?? '', style: Theme.of(context).textTheme.titleLarge),
                centerTitle: false,
                scrolledUnderElevation: 0,
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 12.0,
                ),
                child: Builder(builder: (context) {
                  return switch (state.status) {
                    Status.success => Column(
                        children: [
                          if (state.chips != null) Chips(chips: state.chips!),
                          const SizedBox(height: 12),
                          Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  const FilterItem(),
                                  const SizedBox(height: 12),
                                  if (state.products != null) ItemsGridView(products: state.products!),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    Status.loading => Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            const FilterItem(),
                            const SizedBox(height: 12),
                            Expanded(
                                child:
                                    Container(alignment: Alignment.center, child: Lottie.asset("assets/lottie/loading.json", width: 34, height: 34))),
                          ],
                        ),
                      ),
                    Status.initial => Center(),
                    Status.fail =>
                      Center(child: Text('Kutilmagan hatolik', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.red))),
                  };
                }),
              ),
            );
          },
        );
      },
    );
  }
}




