import 'dart:convert';

import 'package:grocery/Repository/API/signupapiclient.dart';
import 'package:grocery/UI/signup.dart';
import 'package:http/http.dart';

import '../ModelClass/signupmodelclass.dart';

class Signupapi {
  ApiClient apiClient = ApiClient();

  Future<Signupmodelclass> signup(String username,String email,String password,String phone) async {
    String trendingpath =
        'http://62.72.12.251:9876/api/auth/local/sign-up';
    var body = {
      "Username":username,
      "Email":email,
      "Password":password,
      "phone":phone
    };
    Response response =
    await apiClient.invokeAPI(trendingpath, 'POST', jsonEncode(body));

    return Signupmodelclass.fromJson(jsonDecode(response.body));
  }
}
