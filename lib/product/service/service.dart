import 'dart:convert';

import 'package:clean_arch/feature/home/model/user.dart';
import 'package:clean_arch/product/service/mixin/service_mixin.dart';
import 'package:http/http.dart' as http;

class APIService implements APIServiceMixin<List<User>?> {
  @override
  Future<List<User>?> fetchData(String url) async {
    /// Uri parsing
    final uri = Uri.parse(url);

    /// Response coming
    http.Response response = await http.get(uri);

    /// Check status code is ok.
    if (response.statusCode == 200) {
      /// Convert JSON data to User object.
      List<User> responseItems = (json.decode(response.body) as List).map((e) => User.fromJson(e)).toList();

      /// Returning users list.
      return responseItems;
    } else {
      /// Return null if status code is not ok.
      return null;
    }
  }
}
