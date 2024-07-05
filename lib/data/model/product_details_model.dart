import 'package:texnomart/data/model/favourite_model/favourite_model.dart';

class ProductDetailModel {
  final bool success;
  final String message;
  final int code;
  final ProductAllDataModel data;

  ProductDetailModel({
    required this.success,
    required this.message,
    required this.code,
    required this.data,
  });

  @override
  String toString() {
    return 'ProductDetailModel(success: $success, message: $message, code: $code, data: $data)';
  }
}

class ProductAllDataModel {
  final ProductDataModel data;

  ProductAllDataModel({
    required this.data,
  });

  @override
  String toString() {
    return 'ProductAllDataModel(data: $data)';
  }
}

class ProductDataModel {
  final int id;
  final String name;
  final String guarantee;
  final CatalogModel catalog;
  final List<String> smallImages;
  final List<String> largeImages;
  final String availability;
  final String brand;
  final int salePrice;
  final int loanPrice;
  final MinimalLoanPriceModel minimalLoanPrice;
  final String code;
  final List<SaleMonthsModel> saleMonths;
  final int reviewsCount;
  final SeoModel seo;
  final List<MainCharactersModel> mainCharacters;
  final List<BreadcrumbsModel> breadcrumbs;
  final String description;
  final String overview;
  final List<CharactersModel> characters;
  final List<AvailableStoresModel> availableStores;
  final List<AccessoriesModel> accessories;
  final int promotion0012Price;

  ProductDataModel({
    required this.id,
    required this.name,
    required this.guarantee,
    required this.catalog,
    required this.smallImages,
    required this.largeImages,
    required this.availability,
    required this.brand,
    required this.salePrice,
    required this.loanPrice,
    required this.minimalLoanPrice,
    required this.code,
    required this.saleMonths,
    required this.reviewsCount,
    required this.seo,
    required this.mainCharacters,
    required this.breadcrumbs,
    required this.description,
    required this.overview,
    required this.characters,
    required this.availableStores,
    required this.accessories,
    required this.promotion0012Price,
  });

  @override
  String toString() {
    return 'ProductDataModel(id: $id, name: $name, guarantee: $guarantee, catalog: $catalog, smallImages: $smallImages, largeImages: $largeImages, availability: $availability, brand: $brand, salePrice: $salePrice, loanPrice: $loanPrice, minimalLoanPrice: $minimalLoanPrice, code: $code, saleMonths: $saleMonths, reviewsCount: $reviewsCount, seo: $seo, mainCharacters: $mainCharacters, breadcrumbs: $breadcrumbs, description: $description, overview: $overview, characters: $characters, availableStores: $availableStores, accessories: $accessories, promotion0012Price: $promotion0012Price)';
  }
}

class CatalogModel {
  final String name;
  final int minPrice;
  final int maxPrice;

  CatalogModel({
    required this.name,
    required this.minPrice,
    required this.maxPrice,
  });

  @override
  String toString() {
    return 'CatalogModel(name: $name, minPrice: $minPrice, maxPrice: $maxPrice)';
  }
}

class MinimalLoanPriceModel {
  final int minMonthlyPrice;
  final int monthNumber;
  final String minLoanType;

  MinimalLoanPriceModel({
    required this.minMonthlyPrice,
    required this.monthNumber,
    required this.minLoanType,
  });

  @override
  String toString() {
    return 'MinimalLoanPriceModel(minMonthlyPrice: $minMonthlyPrice, monthNumber: $monthNumber, minLoanType: $minLoanType)';
  }
}

class SaleMonthsModel {
  final int id;
  final String key;
  final String name;
  final String image;

  SaleMonthsModel({
    required this.id,
    required this.key,
    required this.name,
    required this.image,
  });

  @override
  String toString() {
    return 'SaleMonthsModel(id: $id, key: $key, name: $name, image: $image)';
  }
}

class SeoModel {
  final String title;
  final String description;
  final String keywords;
  final String image;
  final String scriptSeo;

  SeoModel({
    required this.title,
    required this.description,
    required this.keywords,
    required this.image,
    required this.scriptSeo,
  });

  @override
  String toString() {
    return 'SeoModel(title: $title, description: $description, keywords: $keywords, image: $image, scriptSeo: $scriptSeo)';
  }
}

class MainCharactersModel {
  final String name;
  final String value;

  MainCharactersModel({
    required this.name,
    required this.value,
  });

  @override
  String toString() {
    return 'MainCharactersModel(name: $name, value: $value)';
  }
}

class BreadcrumbsModel {
  final String name;
  final String slug;
  final int id;
  final String type;

  BreadcrumbsModel({
    required this.name,
    required this.slug,
    required this.id,
    required this.type,
  });

  @override
  String toString() {
    return 'BreadcrumbsModel(name: $name, slug: $slug, id: $id, type: $type)';
  }
}

class CharactersModel {
  final String name;
  final List<CharactersModel> characters;

  CharactersModel({
    required this.name,
    required this.characters,
  });

  @override
  String toString() {
    return 'CharactersModel(name: $name, characters: $characters)';
  }
}

class AvailableStoresModel {
  final int id;
  final String name;
  final String lat;
  final String long;
  final String phone;
  final String address;
  final String description;
  final String workTime;

  AvailableStoresModel({
    required this.id,
    required this.name,
    required this.lat,
    required this.long,
    required this.phone,
    required this.address,
    required this.description,
    required this.workTime,
  });

  @override
  String toString() {
    return 'AvailableStoresModel(id: $id, name: $name, lat: $lat, long: $long, phone: $phone, address: $address, description: $description, workTime: $workTime)';
  }
}

class AccessoriesModel {
  final String name;
  final List<ProductsModel> products;

  AccessoriesModel({
    required this.name,
    required this.products,
  });

  @override
  String toString() {
    return 'AccessoriesModel(name: $name, products: $products)';
  }
}

class ProductsModel {
  final int id;
  final String name;
  final String image;
  final String availability;
  final String axiomMonthlyPrice;
  final int salePrice;
  final int allCount;

  ProductsModel({
    required this.id,
    required this.name,
    required this.image,
    required this.availability,
    required this.axiomMonthlyPrice,
    required this.salePrice,
    required this.allCount,
  });

  @override
  String toString() {
    return 'ProductsModel(id: $id, name: $name, image: $image, availability: $availability, axiomMonthlyPrice: $axiomMonthlyPrice, salePrice: $salePrice, allCount: $allCount)';
  }
}
