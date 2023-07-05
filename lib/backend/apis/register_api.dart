import 'package:http/http.dart' as http;

import '../../utils/constants/app_constants.dart';
import '../models/register_model.dart';



class RegisterApi{
  static var client = http.Client();

  static Future<RegisterModel> register(
      String name,
      String email,
      String mobile_number,
      String birth_date,
      String maritual_status,
      String current_address,
      String permanent_address,


      String degree_name,
      String percentage,
      String year_of_passing,
      String university,

      String addhhar_number,
      String pan_number,

      String last_company_name,
      String previous_salary,
      String total_work_time,
      String username,
      String indestry_type,

      String password,
      {dynamic image}
      ) async {
    var request = http.MultipartRequest('POST', Uri.parse('${AppConstants.baseUrl}registration'));
    request.fields.addAll({
      'name': name,
      'email': email,

      'image': ' profile.jpg',
      'mobile_number': mobile_number,
      'birth_date': birth_date,
      'maritual_status': maritual_status,
      'current_address': current_address,
      'permanent_address': permanent_address,
      'degree_name': degree_name,
      'percentage': percentage,
      'year_of_passing': year_of_passing,
      'university': university,
      'addhhar_number': addhhar_number,
      'pan_number': pan_number,
      'last_company_name': last_company_name,
      'previous_salary': previous_salary,
      'total_work_time': total_work_time,
      'username': username,
      'indestry_type': indestry_type,

      'password': password,
    });
    if(image == ''|| image == null)
    {}
    else {
      request.files.add(
          await http.MultipartFile.fromPath('image', image));
    }
    var response = await request.send();
    final res = await http.Response.fromStream(response);

    if (response.statusCode == 200) {
      var jsonString = res.body;
      return registerModelFromJson(jsonString);
    }
    return registerModelFromJson(res.body);
  }
}