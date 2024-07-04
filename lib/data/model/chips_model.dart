class ChipsUIModel {
  final bool success;
  final String message;
  final int code;
  final ChipsDataUIModel data;

  ChipsUIModel({
    required this.success,
    required this.message,
    required this.code,
    required this.data,
  });
}

class ChipsDataUIModel {
  final ParentUIModel parent;
  final List<CategoriesUIModel> categories;
  final bool hasChildImage;
  final bool hasChild;

  ChipsDataUIModel({
    required this.parent,
    required this.categories,
    required this.hasChildImage,
    required this.hasChild,
  });
}

class ParentUIModel {
  final int id;
  final String name;
  final String image;
  final String slug;
  final bool hasChild;

  ParentUIModel({
    required this.id,
    required this.name,
    required this.image,
    required this.slug,
    required this.hasChild,
  });
}

class CategoriesUIModel {
  final int id;
  final String name;
  final String image;
  final String slug;
  final bool hasChild;

  CategoriesUIModel({
    required this.id,
    required this.name,
    required this.image,
    required this.slug,
    required this.hasChild,
  });
}
