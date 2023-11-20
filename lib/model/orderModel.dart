class OrderModel{
  String number;

  OrderModel({required this.number});

  Map<String, dynamic> toMap() {
    return {
      'number': this.number,
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      number: map['number'] as String,
    );
  }

  OrderModel copyWith({
    String? number,
  }) {
    return OrderModel(
      number: number ?? this.number,
    );
  }
}