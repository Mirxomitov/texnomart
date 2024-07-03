import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:texnomart/data/model/catalog_menu_model.dart';
import 'package:texnomart/presentation/pages/home/components/main_search_bar.dart';
import 'package:texnomart/utils/commons.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key, required this.catalogMenuUIModel});

  final CatalogMenuUIModel? catalogMenuUIModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const MainSearchBar(),
          Height12,
          if (catalogMenuUIModel != null)
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemBuilder: (_, index) {
                  return CatalogItem(data: catalogMenuUIModel!.data.data[index]);
                },
                itemCount: catalogMenuUIModel!.data.data.length,
              ),
            ),
        ],
      ),
    );
  }
}

class CatalogItem extends StatelessWidget {
  const CatalogItem({super.key, required this.data});

  final GetCatalogMenuUIModel data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: const Icon(Icons.arrow_forward_ios),
      leading: SvgPicture.network(data.icon, height: 24, width: 24),
      title: Text(data.name, style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold)),
    );
  }
}
