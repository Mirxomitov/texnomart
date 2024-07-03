class CatalogMenuUIModel {
  final bool success;
  final String message;
  final int code;
  final GetAllCatalogMenuUIModel data;

  CatalogMenuUIModel({
    required this.success,
    required this.message,
    required this.code,
    required this.data,
  });

  @override
  String toString() {
    return 'CatalogMenuUIModel(success: $success, message: $message, code: $code, data: $data)';
  }
}

class GetAllCatalogMenuUIModel {
  final List<GetCatalogMenuUIModel> data;

  GetAllCatalogMenuUIModel({
    required this.data,
  });

  @override
  String toString() {
    return 'GetAllCatalogMenuUIModel(data: $data)';
  }
}

class GetCatalogMenuUIModel {
  final String slug;
  final String name;
  final String icon;
  final bool showChildsInWebMobile;
  final List<ChildsUIModel> childs;

  GetCatalogMenuUIModel({
    required this.slug,
    required this.name,
    required this.icon,
    required this.showChildsInWebMobile,
    required this.childs,
  });

  @override
  String toString() {
    return 'GetCatalogMenuUIModel(slug: $slug, name: $name, icon: $icon, showChildsInWebMobile: $showChildsInWebMobile, childs: $childs)';
  }
}

class ChildsUIModel {
  final String slug;
  final String name;
  final bool showChildsInWebMobile;
  final List<ChildsUIModel> childs;

  ChildsUIModel({
    required this.slug,
    required this.name,
    required this.showChildsInWebMobile,
    required this.childs,
  });

  @override
  String toString() {
    return 'ChildsUIModel(slug: $slug, name: $name, showChildsInWebMobile: $showChildsInWebMobile, childs: $childs)';
  }
}
