import 'dart:convert';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/core/utilities/logging_utils.dart';
import 'package:cais/features/county_admin/health/model/vaccine_type_model/vaccine_type_model.dart';
import 'package:cais/features/county_admin/health/vaccinces/vaccines.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class HealthAdminNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;
  List<VaccineTypeModel> _vaccinetype = [];
  List<VaccineTypeModel> get vaccinetype => _vaccinetype;

  Future createVaccineType({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client.post(
        Uri.parse('${SERVERURL}county_admin/vaccine_type'),
        body: jsonEncode(payload));
    logger.e(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      // getReceivership();
      getVaccineType();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster ${response.statusCode}');
    }
  }

  Future getVaccineType() async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client
        .get(Uri.parse('${SERVERURL}county_admin/vaccine_type'));

    if (response.statusCode == 200) {
      _vaccinetype = (jsonDecode(response.body)['data'] as List)
          .map((e) => VaccineTypeModel.fromJson(e))
          .toList();

      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster');
    }
  }
}
