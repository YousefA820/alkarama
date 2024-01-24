import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/core/data/models/product_info.dart';
import 'package:sp1_e_commerce/core/data/repository/prodcut_repository.dart';
import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_toast.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class HomeController extends GetxController {
  RxList<ProductModel> productList = <ProductModel>[].obs;
  RxInt count = 0.obs;

  @override
  void onInit() {
    getAllProdcuts();
    super.onInit();
  }

  void getAllProdcuts() {
    GetAllProductsRepository().getAllProduct().then((value) {
      value.fold((l) {
        CustomToast.showMessage(message: l, type: MessageType.ERROR);
      }, (r) {
        productList.clear();
        productList.addAll(r);
      });
    });
  }
}
