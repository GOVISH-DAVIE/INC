import 'dart:convert';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/admin/counties/data/models/county/county.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class CountiesNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;
  List<County> _counties = [];
  List<County> get counties => _counties;
  Future getCounties() async {
    _isBusy = true;
    notifyListeners();

    final response =
        await intercepted_client.get(Uri.parse('${SERVERURL}counties'));

    if (response.statusCode == 200) {
      _counties = (jsonDecode(response.body)['data'] as List)
          .map((e) => County.fromJson(e))
          .toList();
      _isBusy = false;
      notifyListeners();
    } else {
      logger.w(response.body);
      _counties = [];
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster');
    }
  }

  Future createCounties({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client
        .post(Uri.parse('${SERVERURL}counties'), body: jsonEncode(payload));

    if (response.statusCode == 200 || response.statusCode == 201) {
      getCounties();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster ${response.statusCode}');
    }
  }
}
