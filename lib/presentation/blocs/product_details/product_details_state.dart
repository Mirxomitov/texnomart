part of 'product_details_bloc.dart';

class ProductDetailsState {
  final int productId;
  final ProductDetailModel? productData;
  final bool inBasket;
  final Status status;

  factory ProductDetailsState.initial(int id) {
    return ProductDetailsState(
      productId: id,
      inBasket: false,
      status: Status.loading,
    );
  }

  const ProductDetailsState({
    required this.productId,
    this.productData,
    required this.inBasket,
    required this.status,
  });

  @override
  String toString() {
    return 'ProductDetailsState(productId: $productId, productData: $productData, inBasket: $inBasket, status: $status)';
  }

  ProductDetailsState copyWith({
    int? productId,
    ProductDetailModel? productData,
    bool? inBasket,
    Status? status,
  }) {
    return ProductDetailsState(
      productId: productId ?? this.productId,
      productData: productData ?? this.productData,
      inBasket: inBasket ?? this.inBasket,
      status: status ?? this.status,
    );
  }

  bool _checkHasInBasket(int productId) {
    return HiveHelper.has(productId);
  }
}
