class ProductsModel {
  int? id;
  String? title;
  String? description;
  String? category;
  double? price;
  double? discountPercentage;
  double? rating;
  int? stock;
  List<dynamic>? tags;
  String? brand;
  String? sku;
  int? weight;
  String? warrantyInformation;
  String? shippingInformation;
  String? availabilityStatus;
  String? returnPolicy;
  int? minimumOrderQuantity;
  List<String>? images;
  String? thumbnail;

  ProductsModel(
      {this.id,
      this.title,
      this.description,
      this.category,
      this.price,
      this.discountPercentage,
      this.rating,
      this.stock,
      this.tags,
      this.brand,
      this.sku,
      this.weight,
      this.warrantyInformation,
      this.shippingInformation,
      this.availabilityStatus,
      this.returnPolicy,
      this.minimumOrderQuantity,
      this.images,
      this.thumbnail});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    category = json['category'];
    price = json['price'];
    discountPercentage = json['discountPercentage'];
    rating = json['rating'];
    stock = json['stock'];
    tags = json['tags'].cast<String>();
    brand = json['brand'];
    sku = json['sku'];
    weight = json['weight'];
    warrantyInformation = json['warrantyInformation'];
    shippingInformation = json['shippingInformation'];
    availabilityStatus = json['availabilityStatus'];
    returnPolicy = json['returnPolicy'];
    minimumOrderQuantity = json['minimumOrderQuantity'];
    images = json['images'].cast<String>();
    thumbnail = json['thumbnail'];
  }
}
