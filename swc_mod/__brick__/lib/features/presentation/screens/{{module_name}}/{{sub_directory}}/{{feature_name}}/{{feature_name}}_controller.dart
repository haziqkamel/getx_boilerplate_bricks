import 'package:get/get.dart';

class {{feature_name.pascalCase()}}Controller extends GetxController {
  final {{feature_name.pascalCase()}}UseCase {{feature_name.camelCase()}}UseCase;

  {{feature_name.pascalCase()}}Controller({
    required this.{{feature_name.camelCase()}}UseCase,
  });

  final RxBool _isLoading = RxBool(false);
  bool get isLoading => _isLoading.value;

  @override
  void onInit() {
    initializeData();
    super.onInit();
  }

  Future<void> initializeData() async {

  }

  Future<void> get{{feature_name.pascalCase()}}Data() async {
    _isLoading.value = true;
    try {
      final result = await {{feature_name.camelCase()}}UseCase.execute();
    }catch(err){
      //
    }
    _isLoading.value = false;
  }
}
