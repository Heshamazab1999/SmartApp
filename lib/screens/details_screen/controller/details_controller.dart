import 'package:education_app/controller/base_controller.dart';
import 'package:get/get.dart';

class DetailsController extends BaseController {
  final label = ["Students", "Language", "Lessons", "Video"];
  final data = ["150", "Arabic", "20", "30 minutes"];
  final check = 0.obs;

  checkIndex(int index) {
    check.value = index;
  }
}
