import 'dart:convert';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/features/admin/Village/models/village_model/village_model.dart';
import 'package:cais/features/admin/counties/data/models/county/county.dart';
import 'package:cais/features/admin/ward/models/wards_model/wards_model.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class VillageNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;
  List<VillageModel> _wards = [];
  List<VillageModel> get ward => _wards;
  Future getWardsVillages() async {
    _isBusy = true;
    notifyListeners();

    final response =
        await intercepted_client.get(Uri.parse('${SERVERURL}village'));

    if (response.statusCode == 200) {
      _wards = (jsonDecode(response.body)['data'] as List)
          .map((e) => VillageModel.fromJson(e))
          .toList();
      _isBusy = false;
      notifyListeners();
    } else {
      _wards = [];
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster');
    }
  }

  Future createWardVillage({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client
        .post(Uri.parse('${SERVERURL}village'), body: jsonEncode(payload));

    if (response.statusCode == 200 || response.statusCode == 201) {
      getWardsVillages();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster ${response.statusCode}');
    }
  }
}
