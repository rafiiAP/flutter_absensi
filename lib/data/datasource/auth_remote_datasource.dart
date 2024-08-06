import 'dart:convert';

import 'package:camera/camera.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_absensi/core/constants/variables.dart';
import 'package:flutter_absensi/data/datasource/auth_local_datasource.dart';
import 'package:flutter_absensi/data/models/response/auth_response_model.dart';
import 'package:flutter_absensi/data/models/response/user_response_model.dart';
import 'package:flutter_absensi/functions/func.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDatasource {
  //login
  Future<Either<String, AuthResponseModel>> login(String email, String password) async {
    final url = Uri.parse('${Variables.baseUrl}/api/login');
    C.showLog('---> request login: $url');
    Map<String, dynamic> vaBody = {
      'email': email,
      'password': password,
    };
    String cBody = jsonEncode(vaBody);
    C.showLog('---> request login: $cBody');
    final response = await http.post(
      url,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
      body: cBody,
    );

    C.showLog('---> response login: ${response.body}');

    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      return const Left("Gagal login");
    }
  }

  //logout
  Future<Either<String, String>> logout() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/logout');
    C.showLog('---> request logout: $url');

    Map<String, String> cHeader = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${authData?.token}',
    };
    C.showLog('---> request logout: $cHeader');
    final response = await http.post(
      url,
      headers: cHeader,
    );

    C.showLog('---> response logout: ${response.body}');

    if (response.statusCode == 200) {
      return const Right('Success logout');
    } else {
      return const Left("Gagal logout");
    }
  }

  Future<Either<String, UserResponseModel>> updateProfileRegisterFace(
    String embedding,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/update-profile');
    final request = http.MultipartRequest('POST', url)
      ..headers['Authorization'] = 'Bearer ${authData?.token}'
      ..fields['face_embedding'] = embedding;

    final response = await request.send();
    final responseString = await response.stream.bytesToString();

    if (response.statusCode == 200) {
      return Right(UserResponseModel.fromJson(responseString));
    } else {
      return const Left('Failed to update profile');
    }
  }
}
