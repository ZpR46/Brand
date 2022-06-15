import 'package:brand/models/brandmodels.dart';
import 'package:flutter/material.dart';
import 'package:brand/services/brandservis.dart';

class BrandProvider extends ChangeNotifier {
  late brand_models brandModel = brandModel;
  final BrandService _BrandService = BrandService();

  tampilkanBrand() async {
    brandModel = await _BrandService.tampilkanBrand();
    // ignore: avoid_print
    print(brandModel.data!.length);
    notifyListeners();
  }

  BrandProvider() {
    tampilkanBrand();
  }
}
