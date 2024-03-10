enum ServicePathEnum { baseURL, post }

extension ServicePathEnumExtension on ServicePathEnum {
  String get rawValue {
    switch (this) {
      case ServicePathEnum.baseURL:
        return 'https://jsonplaceholder.typicode.com';

      case ServicePathEnum.post:
        return '/posts';

      default:
        throw Exception('Not found path');
    }
  }
}
