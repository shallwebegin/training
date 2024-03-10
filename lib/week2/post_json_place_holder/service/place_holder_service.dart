import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:training/week2/core/enums/service_path_enum.dart';
import 'package:training/week2/post_json_place_holder/model/post_model.dart';

class PlaceHolderService {
  Future<List<PostModel>?> fetchPostItem() async {
    final url = Uri.parse(
        '${ServicePathEnum.baseURL.rawValue}${ServicePathEnum.post.rawValue}');
    final response = await http.get(url);

    switch (response.statusCode) {
      case HttpStatus.ok:
        final responseBody = json.decode(response.body);
        if (responseBody is List) {
          return responseBody.map((e) => PostModel.fromJson(e)).toList();
        }
        return [];

      default:
        return null;
      //throw Exception('Service error $response');
    }
  }
}
