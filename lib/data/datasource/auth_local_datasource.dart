import 'package:flutter_absensi/core/constants/variables.dart';
import 'package:flutter_absensi/data/models/response/auth_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDatasource {
  Future<void> saveAuthData(AuthResponseModel authData) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString(Variables.authData, authData.toJson());
  }

  //remove
  Future<void> removeAuthData() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove(Variables.authData);
  }

  //get
  Future<AuthResponseModel?> getAuthData() async {
    final pref = await SharedPreferences.getInstance();
    final authData = pref.getString(Variables.authData);
    if (authData != null) {
      return AuthResponseModel.fromJson(authData);
    }
    return null;
  }

  //isAuth
  Future<bool> isAuth() async {
    final pref = await SharedPreferences.getInstance();
    final authData = pref.getString(Variables.authData);
    return authData != null;
  }
}
