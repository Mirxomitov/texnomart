import 'package:texnomart/data/model/slider_model.dart';
import 'package:texnomart/data/model/special_categories_model.dart';
import 'package:texnomart/data/model/top_categories_model.dart';
import 'package:texnomart/data/source/remote/response/slider_response.dart';

import '../../data/model/catalog_menu_model.dart';
import '../../data/model/hit_products_model.dart';
import '../../data/source/remote/response/catalog_menu.dart';
import '../../data/source/remote/response/special_categories.dart';
import '../../data/source/remote/response/top_categories_response.dart';
import '../../data/source/remote/response/xit_products.dart';

class Converter {
  ///
  // Slider Model Converter
  ///

  static SliderModel sliderResponseToModel(SliderResponse sliderResponse) {
    return SliderModel(
      message: sliderResponse.message ?? 'MESSAGE IS NULL',
      code: sliderResponse.code ?? -1,
      success: sliderResponse.success ?? false,
      data: allSliderDataToModel(sliderResponse.data),
    );
  }

  static List<SliderDataModel> allSliderDataToModel(AllSliderData? response) {
    if (response == null || response.data == null) return [];

    return response.data!
        .map(
          (e) => SliderDataModel(
            id: e.id ?? 0,
            link: e.link ?? 'x',
            title: e.title ?? 'x',
            imageWeb: e.imageWeb ?? 'x',
            imageMobileWeb: e.imageMobileWeb ?? 'x',
          ),
        )
        .toList();
  }

  ///
  // TopCategories Model Converter
  ///

  static TopCategoriesModel topCategoriesResponseToModel(TopCategoriesResponse response) {
    return TopCategoriesModel(
      success: response.success ?? false,
      message: response.message ?? 'x',
      code: response.code ?? -1,
      data: topCategoryResponseToModel(response.data) ?? <TopCategoryData>[],
    );
  }

  static List<TopCategoryData>? topCategoryResponseToModel(AllTopCategories? response) {
    if (response == null || response.data == null) return null;

    return response.data!
        .map((e) => TopCategoryData(
              title: e.title ?? '',
              slug: e.slug ?? '',
            ))
        .toList();
  }

  ///
  // Top Special Categories
  ///

  static SpecialCategoriesModel specialCategoriesResponseToModel(SpecialCategories response) {
    return SpecialCategoriesModel(
      success: response.success ?? false,
      message: response.message ?? 'x',
      code: response.code ?? -1,
      data: specialCategoryResponseToModel(response.data) ?? [],
    );
  }

  static List<SpecialCategoriesModelData>? specialCategoryResponseToModel(GetSpecialCategoriesData? response) {
    if (response == null || response.data == null) return null;

    return response.data!
        .map((e) => SpecialCategoriesModelData(
              image: e.image ?? 'x',
              slug: e.slug ?? 'x',
              title: e.title ?? 'x',
            ))
        .toList();
  }

  ///
  // Hit Products
  ///

  static HitProductsUIModel hitProductsResponseToUIModel(XitProducts response) {
    return HitProductsUIModel(
      success: response.success ?? false,
      message: response.message ?? '',
      code: response.code ?? 0,
      data: response.data?.data?.map((product) {
            return HitProductsModelData(
              id: product.id ?? 0,
              name: product.name ?? '',
              image: product.image ?? '',
              availability: product.availability ?? '',
              salePrice: product.salePrice ?? 0,
              finishPrice: product.finishPrice ?? 0,
              discountPrice: product.discountPrice ?? 0,
              reviewsCount: product.reviewsCount ?? 0,
              reviewsAverage: product.reviewsAverage ?? 0,
              allCount: product.allCount ?? 0,
              stickers: product.stickers?.map((sticker) {
                    return StickersUIModel(
                      name: sticker.name ?? '',
                      backgroundColor: sticker.backgroundColor ?? '',
                      textColor: sticker.textColor ?? '',
                      isImage: sticker.isImage ?? false,
                      showInCard: sticker.showInCard ?? false,
                    );
                  }).toList() ??
                  [],
              saleMonths: product.saleMonths?.map((saleMonth) {
                    return SaleMonthsUIModel(
                      id: saleMonth.id ?? 0,
                      key: saleMonth.key ?? '',
                      name: saleMonth.name ?? '',
                      image: saleMonth.image ?? '',
                    );
                  }).toList() ??
                  [],
            );
          }).toList() ??
          [],
    );
  }

  ///
  // Catalog Menu
  ///

/*
  static CatalogMenuUIModel convertCatalogMenuResponseToUIModel(CatalogMenu response) {
    return CatalogMenuUIModel(
      success: response.success ?? false,
      message: response.message ?? '',
      code: response.code ?? 0,
      data: GetAllCatalogMenuUIModel(
        data: response.data?.data?.map((menu) {
              return GetCatalogMenuUIModel(
                slug: menu.slug ?? '',
                name: menu.name ?? '',
                icon: menu.icon ?? '',
                showChildsInWebMobile: menu.showChildsInWebMobile ?? false,
                childs: menu.childs?.map((child) {
                      return ChildsUIModel(
                        slug: child.slug ?? '',
                        name: child.name ?? '',
                        showChildsInWebMobile: child.showChildsInWebMobile ?? false,
                        childs: child.childs?.map((subChild) {
                              return ChildsUIModel(
                                slug: subChild.slug ?? '',
                                name: subChild.name ?? '',
                                showChildsInWebMobile: subChild.showChildsInWebMobile ?? false,
                                childs: subChild.childs?.map((subSubChild) {
                                      return ChildsUIModel(
                                        slug: subSubChild.slug ?? '',
                                        name: subSubChild.name ?? '',
                                        showChildsInWebMobile: subSubChild.showChildsInWebMobile ?? false,
                                        childs: subSubChild.childs?.map((subSubSubChild) {
                                              return ChildsUIModel(
                                                slug: subSubSubChild.slug ?? '',
                                                name: subSubSubChild.name ?? '',
                                                showChildsInWebMobile: subSubSubChild.showChildsInWebMobile ?? false,
                                                childs: subSubSubChild.childs?.map((subSubSubSubChild) {
                                                      return ChildsUIModel(
                                                        slug: subSubSubSubChild.slug ?? '',
                                                        name: subSubSubSubChild.name ?? '',
                                                        showChildsInWebMobile: subSubSubSubChild.showChildsInWebMobile ?? false,
                                                        childs: _convertChildList(subSubSubSubChild.childs ?? []),
                                                      );
                                                    }).toList() ??
                                                    [],
                                              );
                                            }).toList() ??
                                            [],
                                      );
                                    }).toList() ??
                                    [],
                              );
                            }).toList() ??
                            [],
                      );
                    }).toList() ??
                    [],
              );
            }).toList() ??
            [],
      ),
    );
  }
*/

/*
  static List<ChildsUIModel> _convertChildList(List<Childs> childs) {
    return childs.map((child) {
      return ChildsUIModel(
        slug: child.slug ?? '',
        name: child.name ?? '',
        showChildsInWebMobile: child.showChildsInWebMobile ?? false,
        childs: _convertChildList(child.childs ?? []),
      );
    }).toList();
  }
*/

  ///
  //
  ///
}
