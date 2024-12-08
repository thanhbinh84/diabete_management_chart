import 'package:get/get.dart';

class BaseController extends GetxController with StateMixin {
  loading() {
    change(null, status: RxStatus.loading());
  }
  success() {
    change(null, status: RxStatus.success());
  }
  error() {
    change(null, status: RxStatus.error());
  }
}