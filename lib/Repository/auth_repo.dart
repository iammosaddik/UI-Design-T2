import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:nb_utils/nb_utils.dart';
import 'package:uiu/Repository/server_config.dart';

import '../Model/User_profile_model.dart';
import '../Model/sign_in_model.dart';

class AuthRepo{

  // Sign In AuthRepo start,,,,,,,,,,,,

  Future<bool> signInWithEmail(String email, String password)async {
    final prefs = await SharedPreferences.getInstance();
    String signInUrl = Config.serverUrl + Config.signInUrl;
    var respons = await http.post(Uri.parse(signInUrl), body: <String, String>{
      'email': email,
      'password': password,
    });
    var data= jsonDecode(respons.body);
    if (respons.statusCode == 200) {
      var decodedData=SignInModel.fromJson(data);
      await prefs.setString('token', decodedData.data!.token.toString());
      print(prefs.get('token'));
      return true;
    } else {
      return false;
    }
  }

  //Sign Up AuthRepo Start ,,,,,,,,,,,,

  Future<bool> signUpWithEmail(String fullName, String emailAddress, String phoneNumber, String passWord) async{
    final prefs = await SharedPreferences.getInstance();
    String signUp =Config.serverUrl+Config.signUpUrl;
    var respons = await http.post(Uri.parse(signUp),body: <String, String>{
      'name': fullName,
      'email': emailAddress,
      'phone': phoneNumber,
      'password': passWord,
    });
    var data = jsonDecode(respons.body);
    if(respons.statusCode==200) {
      var decodedData= SignInModel.fromJson(data);
      await prefs.setString('token', decodedData.data!.token.toString());
      return true;
    } else {
      throw Exception('User Have Exist');
    }
  }

  //User AuthRepo Strart here,,,,,,,,,,,,,,,,,

Future<UserProfileModel> getProfile()async{
    final prefes = await SharedPreferences.getInstance();
     String token=prefes.getString('token')!;
    String getProfile=Config.serverUrl+Config.profileUrl;
    var respons = await http.get(Uri.parse(getProfile),headers: {
      'Authorization': 'Bearer $token',
    });
    var data = jsonDecode(respons.body);
    if(respons.statusCode==200){
      return UserProfileModel.fromJson(data);
    }else{
      throw Expando('User Not Found');
    }
}

}