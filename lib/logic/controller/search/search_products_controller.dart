import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../constant/link_api.dart';
import '../../../model/products_model.dart';

enum SearchStatus { loading, success, failure }

class SearchProductsController extends GetxController {
  TextEditingController searchProductsController = TextEditingController();
  String securityKey = dotenv.get("SECURITY_KEY");
  String securityUser = dotenv.get("SECURITY_USER");

  Rx<SearchStatus> status = SearchStatus.loading.obs;
  RxList<ProductsModel> searchData = <ProductsModel>[].obs;

  String searchProducts = "";

  Future<void> fetchDataProducts() async {
    try {
      status(SearchStatus.loading);

      final List<ProductsModel> data = await _fetchDataFromApi(searchProducts);

      searchData.assignAll(data);
      status(SearchStatus.success);
    } catch (error) {
      status(SearchStatus.failure);
    }
  }

  Future<List<ProductsModel>> _fetchDataFromApi(String searchQuery) async {
    final String basicAuth =
        'Basic ${base64Encode(utf8.encode('$securityUser:$securityKey'))}';

    final Map<String, String> headers = {
      'authorization': basicAuth,
    };

    final http.Client client = http.Client();
    int maxAttempts = 3;
    int attempt = 0;
    http.Response response;

    while (attempt < maxAttempts) {
      try {
        response = await client.post(
          Uri.parse(AppLink.linkSearchProducts),
          headers: headers,
          body: {'searchProducts': searchQuery},
        );

        if (response.statusCode == 200) {
          final List<dynamic> jsonData = jsonDecode(response.body)['data'];
          return jsonData.map((json) => ProductsModel.fromJson(json)).toList();
        } else {
          throw Exception('Failed to fetch data: ${response.statusCode}');
        }
      } catch (error) {
        attempt++;
      }
    }

    throw Exception('Exceeded maximum attempts to connect');
  }
}
