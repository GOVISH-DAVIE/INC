import 'dart:convert';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/core/utilities/logging_utils.dart';
import 'package:cais/features/county_admin/distribute_relief/models/distribution_wards_model/distribution_wards_model.dart';
import 'package:cais/features/county_admin/distribute_relief/models/relief_distribution_county_model/relief_distribution_county_model.dart';
import 'package:cais/features/county_admin/messages/models/messages_model/messages_model.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class MessageNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;
  List<DistributionWardsModel> _wards = [];
  List<DistributionWardsModel> get wards => _wards;
  final List<ReliefDistributionCountyModel> _reliefDistribution = [];
  List<ReliefDistributionCountyModel> get reliefDistribution =>
      _reliefDistribution;

  List<MessagesModel> _messages = [];
  List<MessagesModel> get messages => _messages;

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

  Future getMessages() async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client
        .get(Uri.parse('${MessageURL}message/analyzedall'));

    if (response.statusCode == 200) {
      _messages = (jsonDecode(response.body)['data'] as List)
          .map((e) => MessagesModel.fromJson(e))
          .toList();

      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Wards');
    }
  }
}
