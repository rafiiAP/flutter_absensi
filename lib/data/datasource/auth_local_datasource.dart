import 'package:flutter_absensi/core/constants/variables.dart';
import 'package:flutter_absensi/data/models/response/auth_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/response/user_response_model.dart';

class AuthLocalDatasource {
  Future<void> saveAuthData(AuthResponseModel authData) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString(Variables.authData, authData.toJson());
  }

  //update
  Future<void> updateAuthData(UserResponseModel data) async {
    final pref = await SharedPreferences.getInstance();
    final authData = await getAuthData();
    if (authData != null) {
      final updatedData = authData.copyWith(user: data.user);
      await pref.setString(Variables.authData, updatedData.toJson());
    }
  }

  //remove
  Future<void> removeAuthData() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove(Variables.authData);
  }

  //get
  Future<AuthResponseModel?> getAuthData() async {
    final pref = await SharedPreferences.getInstance();
    final data = pref.getString(Variables.authData);
    if (data != null) {
      return AuthResponseModel.fromJson(data);
    } else {
      return null;
    }
  }

  //isAuth
  Future<bool> isAuth() async {
    final pref = await SharedPreferences.getInstance();
    final authData = pref.getString(Variables.authData);
    return authData != null;
  }
}
