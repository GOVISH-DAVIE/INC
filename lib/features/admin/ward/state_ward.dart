import 'dart:convert';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/features/admin/counties/data/models/county/county.dart';
import 'package:cais/features/admin/ward/models/wards_model/wards_model.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class WardNotifier extends ChangeNotifier {
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

  Future createWard({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client
        .post(Uri.parse('${SERVERURL}ward'), body: jsonEncode(payload));

    if (response.statusCode == 200 || response.statusCode == 201) {
      getWards();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster ${response.statusCode}');
    }
  }
}
