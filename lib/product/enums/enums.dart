import '../constants/constants.dart';

enum UrlEnum {
  baseUrl,
  endPoint,
}

extension UrlEnumMixin on UrlEnum {
  String get value {
    switch (this) {
      case UrlEnum.baseUrl:
        return Constants.baseUrl;
      case UrlEnum.endPoint:
        return Constants.endPoint;
    }
  }
}
