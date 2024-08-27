// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  //TODO: Implement CounterController

  final bilangan = 0.obs;

  void tambahSatu() {
    if (bilangan.value >= 20) {
      Get.snackbar(
        'warning',
        'Loba Teuing Cape',
        backgroundColor: Colors.amber,
        icon: Icon(Icons.warning),
      );
    } else {
      bilangan.value++;
    }
  }
  void resetBilangan() {
    if (bilangan.value <= 0) {
      Get.snackbar(
        'Error',
        'Udah Stop',
        backgroundColor: Colors.pink,
        icon: Icon(Icons.dangerous),
      );
    } else {
      bilangan.value--;
    }
  }
  void kurangSatu() {
    if (bilangan.value <= 0) {
      Get.snackbar(
        'Error',
        'nilai tidak boleh minus',
        backgroundColor: Colors.blue,
        icon: Icon(Icons.dangerous),
      );
    } else {
      bilangan.value--;
    }
  }
}
