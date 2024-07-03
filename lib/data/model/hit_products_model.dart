class HitProductsUIModel {
  final bool success;
  final String message;
  final int code;
  final List<HitProductsModelData> data;

  HitProductsUIModel({
    required this.success,
    required this.message,
    required this.code,
    required this.data,
  });

  @override
  String toString() {
    return 'XitProductsUIModel(success: $success, message: $message, code: $code, data: $data)';
  }
}

class HitProductsModelData {
  final int id;
  final String name;
  final String image;
  final String availability;
  final int salePrice;
  final int finishPrice;
  final int discountPrice;
  final int reviewsCount;
  final int reviewsAverage;
  final int allCount;
  final List<StickersUIModel> stickers;
  final List<SaleMonthsUIModel> saleMonths;

  HitProductsModelData({
    required this.id,
    required this.name,
    required this.image,
    required this.availability,
    required this.salePrice,
    required this.finishPrice,
    required this.discountPrice,
    required this.reviewsCount,
    required this.reviewsAverage,
    required this.allCount,
    required this.stickers,
    required this.saleMonths,
  });

  @override
  String toString() {
    return 'HitProductsModelData(id: $id, name: $name, image: $image, availability: $availability, salePrice: $salePrice, finishPrice: $finishPrice, discountPrice: $discountPrice, reviewsCount: $reviewsCount, reviewsAverage: $reviewsAverage, allCount: $allCount, stickers: $stickers, saleMonths: $saleMonths)';
  }
}

class StickersUIModel {
  final String name;
  final String backgroundColor;
  final String textColor;
  final bool isImage;
  final bool showInCard;

  StickersUIModel({
    required this.name,
    required this.backgroundColor,
    required this.textColor,
    required this.isImage,
    required this.showInCard,
  });

  @override
  String toString() {
    return 'StickersUIModel(name: $name, backgroundColor: $backgroundColor, textColor: $textColor, isImage: $isImage, showInCard: $showInCard)';
  }
}

class SaleMonthsUIModel {
  final int id;
  final String key;
  final String name;
  final String image;

  SaleMonthsUIModel({
    required this.id,
    required this.key,
    required this.name,
    required this.image,
  });

  @override
  String toString() {
    return 'SaleMonthsUIModel(id: $id, key: $key, name: $name, image: $image)';
  }
}
