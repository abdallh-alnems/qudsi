class ProductsModel {
  String? product;
  String? company;
  String? image;

  ProductsModel({this.product, this.company, this.image});

  ProductsModel.fromJson(Map<String, dynamic> json) {
    product = json['product'];
    company = json['company'];
    image = json['image'];
  }

 
}