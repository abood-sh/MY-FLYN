import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseInfoController extends GetxController {
  final formKey = GlobalKey<FormState>();

  // TextEditingControllers
  final idController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final nicknameController = TextEditingController();
  final instagramController = TextEditingController();
  final linkController = TextEditingController();
  final portfolioController = TextEditingController();

  // Rx variables
  var isLoading = false.obs;
  var saveResult = ''.obs;

  void saveForm() async {
    if (formKey.currentState?.validate() ?? false) {
      isLoading.value = true;
      await Future.delayed(Duration(seconds: 1)); // Simulate save
      isLoading.value = false;
      saveResult.value = '저장 완료';
      Get.snackbar('저장 완료', '정보가 저장되었습니다.');
    }
  }

  @override
  void onClose() {
    idController.dispose();
    emailController.dispose();
    phoneController.dispose();
    nicknameController.dispose();
    instagramController.dispose();
    linkController.dispose();
    portfolioController.dispose();
    super.onClose();
  }
}
