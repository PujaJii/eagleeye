import 'package:http/http.dart' as http;

import '../models/log_in_model.dart';
import '../utils/constants/app_constants.dart';



class LogInApi{

  static Future<LogInModel> logIn(
      String email,
      String password,

      ) async {
    var request = http.MultipartRequest('POST', Uri.parse('${AppConstants.baseUrl}user-login'));
    request.fields.addAll({
      'email_or_userID': email,
      'password': password
    });


    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var jsonString = await response.stream.bytesToString();
     return logInModelFromJson(jsonString);
    }
     return logInModelFromJson(response.reasonPhrase!);

  }
}