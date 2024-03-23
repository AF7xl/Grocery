import 'dart:convert';

import 'package:grocery/Repository/API/signupapiclient.dart';
import 'package:grocery/Repository/ModelClass/signinmodelclass.dart';
import 'package:http/http.dart';

class Signinapi {
  ApiClient apiClient = ApiClient();

  Future<Signinmodelclass> signin(String email,String password) async {
    String trendingpath =
        'http://62.72.12.251:9876/api/auth/local/sign-up';
    var body = {

      "Email":email,
      "Password":password,

    };
    Response response =
    await apiClient.invokeAPI(trendingpath, 'POST', jsonEncode(body));

    return Signinmodelclass.fromJson(jsonDecode(response.body));
  }
}