import 'dart:convert';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/features/admin/ethnicity/models/ethnicity/ethnicity.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class EthnicityNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;
  List<Ethnicity> _counties = [];
  List<Ethnicity> get counties => _counties;
  Future getEthnicities() async {
    _isBusy = true;
    notifyListeners();

    final response =
        await intercepted_client.get(Uri.parse('${SERVERURL}ethnicity'));

    if (response.statusCode == 200) {
      _counties = (jsonDecode(response.body)['data'] as List)
          .map((e) => Ethnicity.fromJson(e))
          .toList();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;

      _counties = [];
      notifyListeners();
      throw Exception('Failed to load Disaster');
    }
  }

  Future createEthnicity({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client
        .post(Uri.parse('${SERVERURL}ethnicity'), body: jsonEncode(payload));

    if (response.statusCode == 200 || response.statusCode == 201) {
      getEthnicities();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster ${response.statusCode}');
    }
  }
}
