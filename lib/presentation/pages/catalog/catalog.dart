import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:texnomart/presentation/pages/home/components/main_search_bar.dart';
import 'package:texnomart/utils/commons.dart';

import '../../../data/source/remote/response/catalog_menu.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key, required this.catalogMenuUIModel});

  final CatalogMenu? catalogMenuUIModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const MainSearchBar(),
          if (catalogMenuUIModel != null && catalogMenuUIModel?.data != null && catalogMenuUIModel?.data?.data != null)
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemBuilder: (_, index) {
                  return CatalogItem(data: catalogMenuUIModel!.data!.data![index]);
                },
                itemCount: catalogMenuUIModel!.data!.data!.length,
              ),
            ),
        ],
      ),
    );
  }
}

class CatalogItem extends StatelessWidget {
  const CatalogItem({super.key, required this.data});

  final GetCatalogMenu data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: const Icon(Icons.arrow_forward_ios),
      leading: data.icon!.endsWith('.svg')
          ? SvgPicture.network(
              data.icon ?? '',
              height: 24,
              width: 24,
              // fit: BoxFit.none,
            )
          : CachedNetworkImage(
              imageUrl: data.icon ?? '',
              height: 24,
              width: 24,
              // fit: BoxFit.none,
            ),
      title: Text(data.name ?? '', style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold)),
    );
  }
}
