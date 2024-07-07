part of 'product_details_bloc.dart';

class ProductDetailsState {
  final int productId;
  final ProductDetailModel? productData;
  final bool inBasket;
  final bool isFavourite;
  final Status status;

  factory ProductDetailsState.initial(int id) {
    return ProductDetailsState(
      productId: id,
      inBasket: false,
      status: Status.loading,
      isFavourite: false,
    );
  }

  const ProductDetailsState({
    required this.productId,
    this.productData,
    required this.inBasket,
    required this.status,
    required this.isFavourite,
  });

  @override
  String toString() {
    return 'ProductDetailsState(productId: $productId, productData: $productData, inBasket: $inBasket, status: $status, isFavourite: $isFavourite)';
  }

  ProductDetailsState copyWith({
    int? productId,
    ProductDetailModel? productData,
    bool? inBasket,
    bool? isFavourite,
    Status? status,
  }) {
    return ProductDetailsState(
      productId: productId ?? this.productId,
      productData: productData ?? this.productData,
      inBasket: inBasket ?? this.inBasket,
      status: status ?? this.status,
      isFavourite: isFavourite ?? this.isFavourite,
    );
  }

  bool _checkHasInBasket(int productId) {
    return HiveHelper.hasInBasket(productId);
  }

  bool _checkIsFavourite(int productId) {
    print('check is favourite $productId');
    return HiveHelper.hasInFavourite(productId);
  }
}
