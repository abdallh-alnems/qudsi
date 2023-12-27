import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../constant/link_api.dart';
import '../../../model/companies_model.dart';

class CompaniesController extends GetxController {
  String securityKey = dotenv.get("SECURITY_KEY");
  String securityUser = dotenv.get("SECURITY_USER");

  Future<List<CompaniesModel>> viewCompanies() async {
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
          Uri.parse(AppLink.linkCompany),
          headers: headers,
        );

        if (response.statusCode == 200) {
          final List<dynamic> jsonData = jsonDecode(response.body)['data'];
          return jsonData.map((json) => CompaniesModel.fromJson(json)).toList();
        } else {
          throw Exception('فشل في جلب البيانات: ${response.statusCode}');
        }
      } catch (error) {
        
        attempt++;
      }
    }

    throw Exception('تجاوز الحد الأقصى لمحاولات الاتصال');
  }
}
