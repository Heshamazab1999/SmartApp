import 'package:education_app/controller/base_controller.dart';
import 'package:get/get.dart';

class DetailsController extends BaseController {
  final label = ["Overview", "Content", "Q & A"];
  final check = 0.obs;
 checkIndex(int index){
   check.value=index;
 }
}
