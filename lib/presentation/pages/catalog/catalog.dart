import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texnomart/presentation/blocs/catalog/catalog_bloc.dart';
import 'package:texnomart/presentation/blocs/selected_category/selected_category_bloc.dart';
import 'package:texnomart/presentation/pages/home/components/main_search_bar.dart';
import 'package:texnomart/presentation/pages/selected_category/selected_category.dart';

import '../../../data/source/remote/response/catalog_menu/catalog_menu.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<CatalogBloc, CatalogState>(
        builder: (context, state) {
          return Column(
            children: [
              const MainSearchBar(),
              if (state.catalogMenuData != null && state.catalogMenuData?.data != null && state.catalogMenuData?.data?.data != null)
                Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (_, __) => const SizedBox(height: 8),
                    itemBuilder: (_, index) {
                      return CatalogItem(
                        data: state.catalogMenuData!.data!.data![index],
                      );
                    },
                    itemCount: state.catalogMenuData!.data!.data!.length,
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

class CatalogItem extends StatelessWidget {
  const CatalogItem({super.key, required this.data});

  final GetCatalogMenu data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => BlocProvider(
              create: (context) => SelectedCategoryBloc(slug: data.slug!)..add(LoadAllProductEvent()),
              child: const SelectedCategory(),
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            data.icon!.endsWith('.svg')
                ? SvgPicture.network(
                    data.icon ?? '',
                    height: 28,
                    width: 28,
                    // fit: BoxFit.none,
                  )
                : CachedNetworkImage(
                    imageUrl: data.icon ?? '',
                    height: 28,
                    width: 28,
                    // fit: BoxFit.none,
                  ),
            SizedBox(width: 4),
            Expanded(
              child: Text(
                data.name ?? '',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: 4),
            const Icon(
              Icons.arrow_forward_ios,
              size: 14,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

/*      child: ListTile(
        trailing: const Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey,),
        leading: data.icon!.endsWith('.svg')
            ? SvgPicture.network(
                data.icon ?? '',
                height: 28,
                width: 28,
                // fit: BoxFit.none,
              )
            : CachedNetworkImage(
                imageUrl: data.icon ?? '',
                height: 28,
                width: 28,
                // fit: BoxFit.none,
              ),
        title: Text(data.name ?? '', style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold)),
      ),*/