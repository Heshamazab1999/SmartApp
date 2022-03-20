import 'package:education_app/controller/base_controller.dart';
import 'package:get/get.dart';

class SignupController extends BaseController {
  final _check = false.obs;

  bool get check => _check.value;

  checkFun(bool v) {
    _check.value = v;
  }
}
