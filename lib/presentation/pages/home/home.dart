import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:texnomart/presentation/pages/home/components/slider.dart';
import 'package:texnomart/presentation/pages/home/components/special_category_item.dart';

import '../../blocs/home/home_bloc.dart';
import 'components/hit_products.dart';
import 'components/main_search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Container(
            color: Colors.white,
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: false,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('texnomart', style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
                      Image.asset('assets/images/logo_texnomart.png', height: 18, width: 18),
                    ],
                  ),
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  centerTitle: true,
                ),
                SliverAppBar(
                  pinned: true,
                  shape: const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  collapsedHeight: 64,
                  scrolledUnderElevation: 0,
                  backgroundColor: Theme.of(context).primaryColor,
                  flexibleSpace: const FlexibleSpaceBar(
                    background: MainSearchBar(),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 12)),
                if (state.sliders != null)
                  SliverToBoxAdapter(
                    child: TopSlider(sliders: state.sliders!),
                  ),
                if (state.specialCategoriesModel != null)
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 192,
                      child: ListView.builder(
                        itemCount: state.specialCategoriesModel!.data.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return SpecialCategoryItem(
                            data: state.specialCategoriesModel!.data[index],
                          );
                        },
                      ),
                    ),
                  ),
                if (state.hitProducts != null)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 12, left: 12, right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Xit savdo',
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.grey[700], fontWeight: FontWeight.bold),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('hammasi', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.grey[700])),
                              Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey[700]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                const SliverToBoxAdapter(child: SizedBox(height: 12)),
                if (state.hitProducts != null)
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 324,
                      child: HitProducts(hitProducts: state.hitProducts!),
                    ),
                  ),
                const SliverToBoxAdapter(child: SizedBox(height: 12)),
                if (state.hitProducts != null) SliverToBoxAdapter(child: Divider(thickness: 1, color: Colors.grey[100])),
                const SliverToBoxAdapter(child: SizedBox(height: 12)),
              ],
            ),
          );
        },
      ),
    );
  }
}
