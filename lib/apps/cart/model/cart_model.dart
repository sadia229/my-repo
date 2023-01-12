class CartModel {
  int? code;
  bool? status;
  String? message;
  List<Data>? data;

  CartModel({this.code, this.status, this.message, this.data});

  CartModel.fromJson(Map<String, dynamic> json) {
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
  String? productId;
  String? productQuantity;
  String? productPrice;
  String? productTotalPrice;
  String? colorCode;
  String? size;
  String? createdAt;
  String? updatedAt;
  Products? products;

  Data(
      {this.id,
      this.userId,
      this.productId,
      this.productQuantity,
      this.productPrice,
      this.productTotalPrice,
      this.colorCode,
      this.size,
      this.createdAt,
      this.updatedAt,
      this.products});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    productId = json['product_id'];
    productQuantity = json['product_quantity'];
    productPrice = json['product_price'];
    productTotalPrice = json['product_total_price'];
    colorCode = json['color_code'];
    size = json['size'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    products = json['products'] != null
        ? new Products.fromJson(json['products'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['product_id'] = this.productId;
    data['product_quantity'] = this.productQuantity;
    data['product_price'] = this.productPrice;
    data['product_total_price'] = this.productTotalPrice;
    data['color_code'] = this.colorCode;
    data['size'] = this.size;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.products != null) {
      data['products'] = this.products!.toJson();
    }
    return data;
  }
}

class Products {
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

  Products(
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
      this.updatedAt});

  Products.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}
