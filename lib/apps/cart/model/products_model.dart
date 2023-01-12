class ProductsModel {
  int? code;
  bool? status;
  String? message;
  List<Data>? data;

  ProductsModel({this.code, this.status, this.message, this.data});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? userId;
  String? productName;
  String? brandId;
  String? categoryId;
  String? subcategoryId;
  String? price;
  String? discountRate;
  String? quantity;
  String? discountPrice;
  String? discription;
  String? image;
  List<String>? images;
  String? slug;
  String? sku;
  String? credit;
  String? totalPrice;
  String? featureProduct;
  String? trandProduct;
  String? exclusiveProduct;
  String? status;
  String? createdAt;
  Null? updatedAt;
  ProductToCategory? productToCategory;
  ProductToSubcategory? productToSubcategory;
  ProductToBrand? productToBrand;
  List<ColorPerSize>? colorPerSize;
  Rating? rating;

  Data(
      {this.id,
        this.userId,
        this.productName,
        this.brandId,
        this.categoryId,
        this.subcategoryId,
        this.price,
        this.discountRate,
        this.quantity,
        this.discountPrice,
        this.discription,
        this.image,
        this.images,
        this.slug,
        this.sku,
        this.credit,
        this.totalPrice,
        this.featureProduct,
        this.trandProduct,
        this.exclusiveProduct,
        this.status,
        this.createdAt,
        this.updatedAt,
        this.productToCategory,
        this.productToSubcategory,
        this.productToBrand,
        this.colorPerSize,
        this.rating});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    productName = json['product_name'];
    brandId = json['brand_id'];
    categoryId = json['category_id'];
    subcategoryId = json['subcategory_id'];
    price = json['price'];
    discountRate = json['discount_rate'];
    quantity = json['quantity'];
    discountPrice = json['discount_price'];
    discription = json['discription'];
    image = json['image'];
    images = json['images'].cast<String>();
    slug = json['slug'];
    sku = json['sku'];
    credit = json['credit'];
    totalPrice = json['total_price'];
    featureProduct = json['feature_product'];
    trandProduct = json['trand_product'];
    exclusiveProduct = json['exclusive_product'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    productToCategory = json['product_to_category'] != null
        ? new ProductToCategory.fromJson(json['product_to_category'])
        : null;
    productToSubcategory = json['product_to_subcategory'] != null
        ? new ProductToSubcategory.fromJson(json['product_to_subcategory'])
        : null;
    productToBrand = json['product_to_brand'] != null
        ? new ProductToBrand.fromJson(json['product_to_brand'])
        : null;
    if (json['color_per_size'] != null) {
      colorPerSize = <ColorPerSize>[];
      json['color_per_size'].forEach((v) {
        colorPerSize!.add(new ColorPerSize.fromJson(v));
      });
    }
    rating =
    json['rating'] != null ? new Rating.fromJson(json['rating']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['product_name'] = this.productName;
    data['brand_id'] = this.brandId;
    data['category_id'] = this.categoryId;
    data['subcategory_id'] = this.subcategoryId;
    data['price'] = this.price;
    data['discount_rate'] = this.discountRate;
    data['quantity'] = this.quantity;
    data['discount_price'] = this.discountPrice;
    data['discription'] = this.discription;
    data['image'] = this.image;
    data['images'] = this.images;
    data['slug'] = this.slug;
    data['sku'] = this.sku;
    data['credit'] = this.credit;
    data['total_price'] = this.totalPrice;
    data['feature_product'] = this.featureProduct;
    data['trand_product'] = this.trandProduct;
    data['exclusive_product'] = this.exclusiveProduct;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.productToCategory != null) {
      data['product_to_category'] = this.productToCategory!.toJson();
    }
    if (this.productToSubcategory != null) {
      data['product_to_subcategory'] = this.productToSubcategory!.toJson();
    }
    if (this.productToBrand != null) {
      data['product_to_brand'] = this.productToBrand!.toJson();
    }
    if (this.colorPerSize != null) {
      data['color_per_size'] =
          this.colorPerSize!.map((v) => v.toJson()).toList();
    }
    if (this.rating != null) {
      data['rating'] = this.rating!.toJson();
    }
    return data;
  }
}

class ProductToCategory {
  int? id;
  String? title;
  String? photo;
  Null? summary;
  String? status;
  String? createdAt;
  String? updatedAt;

  ProductToCategory(
      {this.id,
        this.title,
        this.photo,
        this.summary,
        this.status,
        this.createdAt,
        this.updatedAt});

  ProductToCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    photo = json['photo'];
    summary = json['summary'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['photo'] = this.photo;
    data['summary'] = this.summary;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class ProductToSubcategory {
  int? id;
  String? categoryId;
  String? title;
  String? photo;
  Null? summary;
  String? status;
  String? createdAt;
  String? updatedAt;

  ProductToSubcategory(
      {this.id,
        this.categoryId,
        this.title,
        this.photo,
        this.summary,
        this.status,
        this.createdAt,
        this.updatedAt});

  ProductToSubcategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    title = json['title'];
    photo = json['photo'];
    summary = json['summary'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.categoryId;
    data['title'] = this.title;
    data['photo'] = this.photo;
    data['summary'] = this.summary;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class ProductToBrand {
  int? id;
  String? brandTitle;
  String? photo;
  Null? summary;
  String? status;
  String? createdAt;
  String? updatedAt;

  ProductToBrand(
      {this.id,
        this.brandTitle,
        this.photo,
        this.summary,
        this.status,
        this.createdAt,
        this.updatedAt});

  ProductToBrand.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    brandTitle = json['brand_title'];
    photo = json['photo'];
    summary = json['summary'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['brand_title'] = this.brandTitle;
    data['photo'] = this.photo;
    data['summary'] = this.summary;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class ColorPerSize {
  int? id;
  String? productId;
  String? sizeName;
  List<String>? colorCode;
  String? createdAt;
  String? updatedAt;

  ColorPerSize(
      {this.id,
        this.productId,
        this.sizeName,
        this.colorCode,
        this.createdAt,
        this.updatedAt});

  ColorPerSize.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    sizeName = json['size_name'];
    colorCode = json['color_code'].cast<String>();
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_id'] = this.productId;
    data['size_name'] = this.sizeName;
    data['color_code'] = this.colorCode;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Rating {
  int? id;
  String? productId;
  String? userId;
  String? rating;
  String? createdAt;
  String? updatedAt;

  Rating(
      {this.id,
        this.productId,
        this.userId,
        this.rating,
        this.createdAt,
        this.updatedAt});

  Rating.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    userId = json['user_id'];
    rating = json['rating'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_id'] = this.productId;
    data['user_id'] = this.userId;
    data['rating'] = this.rating;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
