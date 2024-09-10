import 'dart:convert';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/core/utilities/logging_utils.dart';
import 'package:cais/features/county_admin/distribute_relief/models/distribution_wards_model/distribution_wards_model.dart';
import 'package:cais/features/county_admin/distribute_relief/models/relief_distribution_county_model/relief_distribution_county_model.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class DistributeReliefNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;
  List<DistributionWardsModel> _wards = [];
  List<DistributionWardsModel> get wards => _wards;
  List<ReliefDistributionCountyModel> _reliefDistribution = [];
  List<ReliefDistributionCountyModel> get reliefDistribution => _reliefDistribution;

  Future getWards() async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client
        .get(Uri.parse('${SERVERURL}county_admin/distribution/wards'));

    if (response.statusCode == 200) {
      _wards = (jsonDecode(response.body)['data'] as List)
          .map((e) => DistributionWardsModel.fromJson(e))
          .toList();

      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Wards');
    }
  }

  Future createReliefDistribution({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client.post(
        Uri.parse('${SERVERURL}county_admin/distribution'),
        body: jsonEncode(payload));
    logger.e(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      getReliefDistribution();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster ${response.statusCode}');
    }
  }
  Future getReliefDistribution() async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client.get(
        Uri.parse('${SERVERURL}county_admin/distribution'),
         );
    logger.e(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      // get();
       _reliefDistribution = (jsonDecode(response.body)['data'] as List)
          .map((e) => ReliefDistributionCountyModel
          .fromJson(e))
          .toList();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster ${response.statusCode}');
    }
  }
}
