part of 'product_details_bloc.dart';

class ProductDetailsState {
  final int productId;
  final ProductDetailModel? productData;

  factory ProductDetailsState.initial(int id) {
    return ProductDetailsState(
      productId: id,
    );
  }

  const ProductDetailsState({
    required this.productId,
    this.productData,
  });

  @override
  String toString() {
    return 'ProductDetailsState()';
  }

  ProductDetailsState copyWith({
    int? productId,
    ProductDetailModel? productData,
    }) {
    return ProductDetailsState(
      productId: productId ?? this.productId,
      productData: productData ?? this.productData,
    );
  }
}
