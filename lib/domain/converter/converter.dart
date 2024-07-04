import 'package:texnomart/data/model/slider_model.dart';
import 'package:texnomart/data/model/special_categories_model.dart';
import 'package:texnomart/data/model/top_categories_model.dart';

import '../../data/model/chips_model.dart';
import '../../data/model/hit_products_model.dart';
import '../../data/model/product_details_model.dart';
import '../../data/source/remote/response/chips/chips_response.dart';
import '../../data/source/remote/response/hit_products/xit_products.dart';
import '../../data/source/remote/response/product_detail/product_detail_response.dart' as details;
import '../../data/source/remote/response/slider/slider_response.dart';
import '../../data/source/remote/response/special_categories/special_categories.dart';
import '../../data/source/remote/response/top_categories/top_categories_response.dart';

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
  // Product detail response as *[details]*
  ///

  static ProductDetailModel convertProductDetailResponseToModel(details.ProductDetailResponse response) {
    return ProductDetailModel(
      success: response.success ?? false,
      message: response.message ?? '',
      code: response.code ?? 0,
      data: ProductAllDataModel(
        data: convertProductData(response.data?.data),
      ),
    );
  }

  static ProductDataModel convertProductData(details.ProductData? data) {
    return ProductDataModel(
      id: data?.id ?? 0,
      name: data?.name ?? '',
      guarantee: data?.guarantee ?? '',
      catalog: convertCatalog(data?.catalog),
      smallImages: data?.smallImages ?? [],
      largeImages: data?.largeImages ?? [],
      availability: data?.availability ?? '',
      brand: data?.brand ?? '',
      salePrice: data?.salePrice ?? 0,
      loanPrice: data?.loanPrice ?? 0,
      minimalLoanPrice: convertMinimalLoanPrice(data?.minimalLoanPrice),
      code: data?.code ?? '',
      saleMonths: convertSaleMonthsList(data?.saleMonths ?? []),
      reviewsCount: data?.reviewsCount ?? 0,
      seo: convertSeo(data?.seo),
      mainCharacters: convertMainCharactersList(data?.mainCharacters ?? []),
      breadcrumbs: convertBreadcrumbsList(data?.breadcrumbs ?? []),
      description: data?.description ?? '',
      overview: data?.overview ?? '',
      characters: convertCharactersList(data?.characters ?? []),
      availableStores: convertAvailableStoresList(data?.availableStores ?? []),
      accessories: convertAccessoriesList(data?.accessories ?? []),
      promotion0012Price: data?.promotion0012Price ?? 0,
    );
  }

  static CatalogModel convertCatalog(details.Catalog? catalog) {
    return CatalogModel(
      name: catalog?.name ?? '',
      minPrice: catalog?.minPrice ?? 0,
      maxPrice: catalog?.maxPrice ?? 0,
    );
  }

  static MinimalLoanPriceModel convertMinimalLoanPrice(details.MinimalLoanPrice? minimalLoanPrice) {
    return MinimalLoanPriceModel(
      minMonthlyPrice: minimalLoanPrice?.minMonthlyPrice ?? 0,
      monthNumber: minimalLoanPrice?.monthNumber ?? 0,
      minLoanType: minimalLoanPrice?.minLoanType ?? '',
    );
  }

  static List<SaleMonthsModel> convertSaleMonthsList(List<details.SaleMonths> saleMonths) {
    return saleMonths.map((saleMonth) => convertSaleMonth(saleMonth)).toList();
  }

  static SaleMonthsModel convertSaleMonth(details.SaleMonths saleMonth) {
    return SaleMonthsModel(
      id: saleMonth.id ?? 0,
      key: saleMonth.key ?? '',
      name: saleMonth.name ?? '',
      image: saleMonth.image ?? '',
    );
  }

  static SeoModel convertSeo(details.Seo? seo) {
    return SeoModel(
      title: seo?.title ?? '',
      description: seo?.description ?? '',
      keywords: seo?.keywords ?? '',
      image: seo?.image ?? '',
      scriptSeo: seo?.scriptSeo ?? '',
    );
  }

  static List<MainCharactersModel> convertMainCharactersList(List<details.MainCharacters> mainCharacters) {
    return mainCharacters.map((mainCharacter) => convertMainCharacter(mainCharacter)).toList();
  }

  static MainCharactersModel convertMainCharacter(details.MainCharacters mainCharacter) {
    return MainCharactersModel(
      name: mainCharacter.name ?? '',
      value: mainCharacter.value ?? '',
    );
  }

  static List<BreadcrumbsModel> convertBreadcrumbsList(List<details.Breadcrumbs> breadcrumbs) {
    return breadcrumbs.map((breadcrumb) => convertBreadcrumb(breadcrumb)).toList();
  }

  static BreadcrumbsModel convertBreadcrumb(details.Breadcrumbs breadcrumb) {
    return BreadcrumbsModel(
      name: breadcrumb.name ?? '',
      slug: breadcrumb.slug ?? '',
      id: breadcrumb.id ?? 0,
      type: breadcrumb.type ?? '',
    );
  }

  static List<CharactersModel> convertCharactersList(List<details.Characters> characters) {
    return characters.map((character) => convertCharacter(character)).toList();
  }

  static CharactersModel convertCharacter(details.Characters character) {
    return CharactersModel(
      name: character.name ?? '',
      characters: convertCharactersList(character.characters ?? []),
    );
  }

  static List<AvailableStoresModel> convertAvailableStoresList(List<details.AvailableStores> availableStores) {
    return availableStores.map((store) => convertAvailableStore(store)).toList();
  }

  static AvailableStoresModel convertAvailableStore(details.AvailableStores store) {
    return AvailableStoresModel(
      id: store.id ?? 0,
      name: store.name ?? '',
      lat: store.lat ?? '',
      long: store.long ?? '',
      phone: store.phone ?? '',
      address: store.address ?? '',
      description: store.description ?? '',
      workTime: store.workTime ?? '',
    );
  }

  static List<AccessoriesModel> convertAccessoriesList(List<details.Accessories> accessories) {
    return accessories.map((accessory) => convertAccessory(accessory)).toList();
  }

  static AccessoriesModel convertAccessory(details.Accessories accessory) {
    return AccessoriesModel(
      name: accessory.name ?? '',
      products: convertProductsList(accessory.products ?? []),
    );
  }

  static List<ProductsModel> convertProductsList(List<details.Products> products) {
    return products.map((product) => convertProduct(product)).toList();
  }

  static ProductsModel convertProduct(details.Products product) {
    return ProductsModel(
      id: product.id ?? 0,
      name: product.name ?? '',
      image: product.image ?? '',
      availability: product.availability ?? '',
      axiomMonthlyPrice: product.axiomMonthlyPrice ?? '',
      salePrice: product.salePrice ?? 0,
      allCount: product.allCount ?? 0,
    );
  }

  ///
  // Chips converter
  ///

  static ChipsUIModel convertChipsResponseToUIModel(ChipsResponse response) {
    return ChipsUIModel(
      success: response.success ?? false,
      message: response.message ?? '',
      code: response.code ?? 0,
      data: convertChipsData(response.data),
    );
  }

  static ChipsDataUIModel convertChipsData(ChipsData? data) {
    return ChipsDataUIModel(
      parent: convertParent(data?.parent),
      categories: convertCategoriesList(data?.categories ?? []),
      hasChildImage: data?.hasChildImage ?? false,
      hasChild: data?.hasChild ?? false,
    );
  }

  static ParentUIModel convertParent(Parent? parent) {
    return ParentUIModel(
      id: parent?.id ?? 0,
      name: parent?.name ?? '',
      image: parent?.image ?? '',
      slug: parent?.slug ?? '',
      hasChild: parent?.hasChild ?? false,
    );
  }

  static List<CategoriesUIModel> convertCategoriesList(List<Categories>? categories) {
    return categories?.map((category) => convertCategory(category)).toList() ?? [];
  }

  static CategoriesUIModel convertCategory(Categories category) {
    return CategoriesUIModel(
      id: category.id ?? 0,
      name: category.name ?? '',
      image: category.image ?? '',
      slug: category.slug ?? '',
      hasChild: category.hasChild ?? false,
    );
  }
}
