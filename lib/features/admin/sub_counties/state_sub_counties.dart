import 'dart:convert';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/features/admin/sub_counties/models/sub_county_model/sub_county_model.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class SubCountiesNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;
  List<SubCountyModel> _subCounties = [];
  List<SubCountyModel> get subCounties => _subCounties;
  Future getSubCounties() async {
    _isBusy = true;
    notifyListeners();

    final response =
        await intercepted_client.get(Uri.parse('${SERVERURL}subcounties'));

    if (response.statusCode == 200) {
      _subCounties = (jsonDecode(response.body)['data'] as List)
          .map((e) => SubCountyModel.fromJson(e))
          .toList();
      _isBusy = false;
      notifyListeners();
    } else {
      _subCounties = [];
      throw Exception('Failed to load Disaster');
      notifyListeners();
    }
  }

  Future createSubCounties({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client
        .post(Uri.parse('${SERVERURL}subcounties'), body: jsonEncode(payload));

    if (response.statusCode == 200 || response.statusCode == 201) {
      getSubCounties();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster ${response.statusCode}');
    }
  }
}
