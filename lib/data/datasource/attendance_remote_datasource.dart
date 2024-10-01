import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_absensi/data/models/response/attendance_response_model.dart';
import 'package:flutter_absensi/functions/func.dart';

import 'package:http/http.dart' as http;

import '../../core/constants/variables.dart';
import '../models/request/checkinout_request_model.dart';
import '../models/response/checkinout_response_model.dart';
import '../models/response/company_response_model.dart';
import 'auth_local_datasource.dart';

class AttendanceRemoteDatasource {
  Future<Either<String, CompanyResponseModel>> getCompanyProfile() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/company');

    C.showLog('---> request get company profile: $url');

    final response = await http.get(
      url,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authData?.token}',
      },
    );

    C.showLog('---> response get company profile: ${response.body}');

    if (response.statusCode == 200) {
      return Right(CompanyResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get company profile');
    }
  }

  Future<Either<String, (bool, bool)>> isCheckedin() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/is-checkin');

    C.showLog('---> request get checkedin status: $url');

    final response = await http.get(
      url,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authData?.token}',
      },
    );

    C.showLog('---> response get checkedin status: ${response.body}');

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      return Right((responseData['checkedin'] as bool, responseData['checkedout'] as bool));
    } else {
      return const Left('Failed to get checkedin status');
    }
  }

  Future<Either<String, CheckInOutResponseModel>> checkin(CheckInOutRequestModel data) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/checkin');

    C.showLog('---> request checkin: $url');

    final response = await http.post(
      url,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authData?.token}',
      },
      body: data.toJson(),
    );

    C.showLog('----> response checkin: ${response.body}');

    if (response.statusCode == 200) {
      return Right(CheckInOutResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to checkin');
    }
  }

  Future<Either<String, CheckInOutResponseModel>> checkout(CheckInOutRequestModel data) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/checkout');

    C.showLog('---> request checkout: $url');

    final response = await http.post(
      url,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authData?.token}',
      },
      body: data.toJson(),
    );

    C.showLog('---> response checkout: ${response.body}');

    if (response.statusCode == 200) {
      return Right(CheckInOutResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to checkout');
    }
  }

  Future<Either<String, AttendanceResponseModel>> getAttendance(String date) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/api-attendances?date=$date');
    C.showLog('---> request checkout: $url');

    final response = await http.get(
      url,
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authData?.token}',
      },
    );
    C.showLog('---> response checkout: ${response.body}');

    if (response.statusCode == 200) {
      return Right(AttendanceResponseModel.fromJson(response.body));
    } else {
      return const Left('Failed to get attendance');
    }
  }
}
