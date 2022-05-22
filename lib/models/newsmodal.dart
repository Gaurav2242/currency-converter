class NewsModal {
  static List<Item> items = [];
}

class Item {
  final String title;
  final String link;
  final String description;
  final String pubdata;
  final String sourceid;
  final String language;
  final String image;
  final String content;
  Item(
      {required this.title,
      required this.content,
      required this.image,
      required this.link,
      required this.description,
      required this.pubdata,
      required this.sourceid,
      required this.language});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      content: map["content"],
      image: map["image_url"],
      title: map["title"],
      link: map["link"],
      description: map["description"],
      pubdata: map["pubDate"],
      sourceid: map["source_id"],
      language: map["language"],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'link': link,
      'description': description,
      'pubdata': pubdata,
      'sourceid': sourceid,
      'language': language,
      'image': image,
      'content': content,
    }..removeWhere((key, value) => (value == null));
  }
}
















// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

// import 'dart:convert';

// Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

// String welcomeToJson(Welcome data) => json.encode(data.toJson());

// class Welcome {
//     Welcome({
//         this.products,
//     });

//     List<Product> products;

//     factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
//         products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "products": List<dynamic>.from(products.map((x) => x.toJson())),
//     };
// }

// class Product {
//     Product({
//         this.id,
//         this.name,
//         this.desc,
//         this.price,
//         this.color,
//         this.image,
//     });

//     int id;
//     String name;
//     String desc;
//     int price;
//     String color;
//     String image;

//     factory Product.fromJson(Map<String, dynamic> json) => Product(
//         id: json["id"],
//         name: json["name"],
//         desc: json["desc"],
//         price: json["price"],
//         color: json["color"],
//         image: json["image"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "desc": desc,
//         "price": price,
//         "color": color,
//         "image": image,
//     };
// }
