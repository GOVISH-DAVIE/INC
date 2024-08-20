import 'dart:convert';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/features/admin/genders/models/gender_model/gender_model.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class GenderNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;
  List<GenderModel> _genders = [];
  List<GenderModel> get genders => _genders;
  Future getGender() async {
    _isBusy = true;
    notifyListeners();

    final response =
        await intercepted_client.get(Uri.parse('${SERVERURL}gender'));

    if (response.statusCode == 200) {
      _genders = (jsonDecode(response.body)['data'] as List)
          .map((e) => GenderModel.fromJson(e))
          .toList();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      _genders = [];

      notifyListeners();
      throw Exception('Failed to load Disaster');
    }
  }

  Future createGender({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client
        .post(Uri.parse('${SERVERURL}gender'), body: jsonEncode(payload));

    if (response.statusCode == 200 || response.statusCode == 201) {
      getGender();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster ${response.statusCode}');
    }
  }
}
