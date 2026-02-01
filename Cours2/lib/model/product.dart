// ignore_for_file: constant_identifier_names
class Product {
  final String barcode;
  final String? name;
  final String? altName;
  final String? picture;
  final String? quantity;
  final List<String>? brands;
  final List<String>? manufacturingCountries;
  final ProductNutriScore? nutriScore;
  final ProductNovaScore? novaScore;
  final ProductGreenScore? greenScore;
  final List<String>? ingredients;

  Product({
    required this.barcode,
    this.name,
    this.altName,
    this.picture,
    this.quantity,
    this.brands,
    this.manufacturingCountries,
    this.nutriScore,
    this.novaScore,
    this.greenScore,
    this.ingredients,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      barcode: json['barcode'] ?? '',
      name: json['name'],
      altName: json['altName'],
      picture: json['pictures']?['product'],
      quantity: json['quantity'],
      brands: json['brands'] != null ? List<String>.from(json['brands']) : null,
      manufacturingCountries: json['manufacturingCountries'] != null
          ? List<String>.from(json['manufacturingCountries'])
          : null,
      nutriScore: _nutriScoreFromString(json['nutriScore']),
      novaScore: _novaScoreFromInt(json['novaScore']),
      greenScore: _greenScoreFromString(json['ecoScoreGrade']),
      ingredients: json['ingredients']?['list'] != null
          ? List<String>.from(json['ingredients']['list'])
          : null,
    );
  }
}

ProductNutriScore _nutriScoreFromString(String? value) {
  if (value == null) return ProductNutriScore.unknown;
  switch (value.toLowerCase()) {
    // <- ici
    case 'a':
      return ProductNutriScore.A;
    case 'b':
      return ProductNutriScore.B;
    case 'c':
      return ProductNutriScore.C;
    case 'd':
      return ProductNutriScore.D;
    case 'e':
      return ProductNutriScore.E;
    default:
      return ProductNutriScore.unknown;
  }
}

ProductNovaScore _novaScoreFromInt(dynamic value) {
  final intVal = int.tryParse(value?.toString() ?? '') ?? -1;
  return switch (intVal) {
    1 => ProductNovaScore.group1,
    2 => ProductNovaScore.group2,
    3 => ProductNovaScore.group3,
    4 => ProductNovaScore.group4,
    _ => ProductNovaScore.unknown,
  };
}

ProductGreenScore _greenScoreFromString(String? value) {
  if (value == null) return ProductGreenScore.unknown;
  switch (value.toLowerCase()) {
    // <- ici aussi
    case 'a+':
      return ProductGreenScore.APlus;
    case 'a':
      return ProductGreenScore.A;
    case 'b':
      return ProductGreenScore.B;
    case 'c':
      return ProductGreenScore.C;
    case 'd':
      return ProductGreenScore.D;
    case 'e':
      return ProductGreenScore.E;
    case 'f':
      return ProductGreenScore.F;
    default:
      return ProductGreenScore.unknown;
  }
}

enum ProductNutriScore { A, B, C, D, E, unknown }

enum ProductNovaScore { group1, group2, group3, group4, unknown }

enum ProductGreenScore { A, APlus, B, C, D, E, F, unknown }
