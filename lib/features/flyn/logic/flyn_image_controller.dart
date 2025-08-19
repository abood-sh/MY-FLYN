import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class FlynImageController extends GetxController {
  final ImagePicker _picker = ImagePicker();
  Rx<XFile?> pickedImage = Rx<XFile?>(null);

  Future<void> pickImage(ImageSource source) async {
    final XFile? image = await _picker.pickImage(source: source);
    if (image != null) {
      pickedImage.value = image;
    }
  }
}
