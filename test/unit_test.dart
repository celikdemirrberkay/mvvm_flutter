import 'package:clean_arch/feature/home/model/user.dart';
import 'package:clean_arch/feature/home/view_model/clean_arch_view_model.dart';
import 'package:clean_arch/product/service/mixin/service_mixin.dart';
import 'package:clean_arch/product/service/service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  /// Service data test
  test('Service data check', () async {
    ///API Service object
    final APIServiceMixin<List<User>?> apiService = APIService();

    /// View model object
    final viewModel = CleanArchViewModel(apiService);

    /// Fetching data and put the user object as List<User>?
    final user = await viewModel.fetchData();

    /// Check user is not null. If test passed, user is not null
    expect(user == null, false);
  });
}
