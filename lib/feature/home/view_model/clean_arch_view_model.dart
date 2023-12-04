import 'package:clean_arch/feature/home/view_model/mixin/clean_arch_viewmodel_mixin.dart';
import 'package:clean_arch/product/constants/constants.dart';
import 'package:clean_arch/product/enums/enums.dart';
import 'package:clean_arch/product/service/mixin/service_mixin.dart';

import '../model/user.dart';

class CleanArchViewModel with CleanArchViewModelMixin<List<User>?> {
  CleanArchViewModel(this.apiService);

  /// Getting api service object
  final APIServiceMixin<List<User>?> apiService;

  @override
  Future<List<User>?> fetchData() async {
    return apiService.fetchData(UrlEnum.baseUrl.value + UrlEnum.endPoint.value);
  }
}
