import 'dart:convert';

class DummyOrder {
  final String id;
  final String name;
  final String image;
  final String price;
  final String quantity;
  DummyOrder({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
  });

  DummyOrder copyWith({
    String? id,
    String? name,
    String? image,
    String? price,
    String? quantity,
  }) {
    return DummyOrder(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
      'price': price,
      'quantity': quantity,
    };
  }

  factory DummyOrder.fromMap(Map<String, dynamic> map) {
    return DummyOrder(
      id: map['id'] as String,
      name: map['name'] as String,
      image: map['image'] as String,
      price: map['price'] as String,
      quantity: map['quantity'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory DummyOrder.fromJson(String source) =>
      DummyOrder.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DummyOrder(id: $id, name: $name, image: $image, price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(covariant DummyOrder other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.image == image &&
        other.price == price &&
        other.quantity == quantity;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        image.hashCode ^
        price.hashCode ^
        quantity.hashCode;
  }
}
