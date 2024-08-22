import 'dart:convert';

import 'package:cais/core/data/datasources/local_storage_data_source.dart';
import 'package:cais/core/network/http_client.dart';
import 'package:cais/features/admin/ward/models/wards_model/wards_model.dart';
import 'package:cais/features/officer/auth/model/auth_user_officer_model/auth_user_officer_model.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class OfficerAuthNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;
  List<WardsModel> _wards = [];
  List<WardsModel> get ward => _wards;
  Future getWards() async {
    _isBusy = true;
    notifyListeners();

    final response =
        await intercepted_client.get(Uri.parse('${SERVERURL}ward'));

    if (response.statusCode == 200) {
      _wards = (jsonDecode(response.body)['data'] as List)
          .map((e) => WardsModel.fromJson(e))
          .toList();
      _isBusy = false;
      notifyListeners();
    } else {
      _wards = [];
      throw Exception('Failed to load Disaster');
      notifyListeners();
    }
  }

  Future login({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client.post(
        Uri.parse('${SERVERURL}officer_login'),
        body: jsonEncode(payload));

    if (response.statusCode == 200 || response.statusCode == 201) {
      _isBusy = false;
      notifyListeners();
      storeData('auth', response.body);
      return AuthUserOfficerModel.fromJson(jsonDecode(response.body));
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster ${response.statusCode}');
    }
  }
}
