import 'package:dartz/dartz.dart';
import 'package:flutter_absensi/functions/func.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

import '../../core/constants/variables.dart';
import 'auth_local_datasource.dart';

class PermissonRemoteDatasource {
  Future<Either<String, String>> addPermission(String date, String reason, XFile? image) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final url = Uri.parse('${Variables.baseUrl}/api/api-permissions');
    final headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer ${authData?.token}',
    };

    var request = http.MultipartRequest('POST', url);

    C.showLog('----> request add permission: $url');

    request.headers.addAll(headers);
    request.fields['date'] = date;
    request.fields['reason'] = reason;
    request.files.add(await http.MultipartFile.fromPath('image', image!.path));

    http.StreamedResponse response = await request.send();

    final String body = await response.stream.bytesToString();

    C.showLog('----> response add permission: $body');

    if (response.statusCode == 201) {
      return const Right('Permission added successfully');
    } else {
      return const Left('Failed to add permission');
    }
  }
}
