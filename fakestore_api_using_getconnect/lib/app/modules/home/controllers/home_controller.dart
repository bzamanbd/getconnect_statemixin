// ignore_for_file: unnecessary_overrides
import '../providers/product_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<List<dynamic>> {
  @override
  void onInit() {
    super.onInit();
    ProductProvider().getAllProducts().then((res) {
      change(res, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
