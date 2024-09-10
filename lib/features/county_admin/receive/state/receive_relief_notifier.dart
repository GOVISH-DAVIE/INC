import 'dart:convert';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/core/utilities/logging_utils.dart';
import 'package:cais/features/county_admin/receive/models/receive_relief_model/receive_relief_model.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class ReceiveReliefNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;

  List<ReceiveReliefModel> _relief = [];
  List<ReceiveReliefModel> get relief => _relief;


    Future getReceivership() async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client
        .get(Uri.parse('${SERVERURL}county_admin/receive'));

    if (response.statusCode == 200) {
      _relief = (jsonDecode(response.body)['data'] as List)
          .map((e) => ReceiveReliefModel.fromJson(e))
          .toList();

      _isBusy = false;
      notifyListeners();

      //  _reportsCategoryModel   .sort((a, b) => a.name!
      //           .toLowerCase()
      //           .compareTo(b.name!.toLowerCase()));
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster');
    }
  }


  Future createRelief({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client.post(
        Uri.parse('${SERVERURL}county_admin/receive'),
        body: jsonEncode(payload));
    logger.e(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      getReceivership();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster ${response.statusCode}');
    }
  }
}
