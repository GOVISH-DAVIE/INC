import 'dart:convert';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/core/utilities/logging_utils.dart';
import 'package:cais/features/officer/admin/relief/models/relief_distribution/relief_distribution.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class ReliefNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;
  List<ReliefDistribution> _relief = [];
  List<ReliefDistribution> get relief => _relief;

  Future getDistributions() async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client
        .get(Uri.parse('${SERVERURL}relief_distribution'));

    if (response.statusCode == 200) {
      _relief = (jsonDecode(response.body)['data'] as List)
          .map((e) => ReliefDistribution.fromJson(e))
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

  Future createApplications({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client.post(
        Uri.parse('${SERVERURL}relief_distribution'),
        body: jsonEncode(payload));

    if (response.statusCode == 200 || response.statusCode == 201) {
      // getCounties();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster ${response.statusCode}');
    }
  }

  Future createRelief({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client.post(
        Uri.parse('${SERVERURL}relief_distribution'),
        body: jsonEncode(payload));
    logger.e(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      // getCounties();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster ${response.statusCode}');
    }
  }
}
