// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:getconnect_statemixin/app/modules/home/providers/user_model_provider.dart';

class HomeController extends GetxController with StateMixin<List<dynamic>> {
  @override
  void onInit() {
    super.onInit();

    UserModelProvider().getUser().then((resp) {
      change(resp, status: RxStatus.success());
    }, onError: (err) {
      change(
        null,
        status: RxStatus.error(err.toString()),
      );
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
