import 'dart:convert';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/officer/disaster/model/disaster_model/disaster_model.dart';
import 'package:cais/features/officer/disaster/model/disaster_model/disaster_occurence_model/disaster_occurence_model.dart';
import 'package:cais/features/officer/reports/models/report_occurence_model/report_occurence_model.dart';
import 'package:cais/features/officer/reports/models/reports_category_model/reports_category_model.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class DisasterNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;
  List<ReportsCategoryModel> _reportsCategoryModel = [];
  List<ReportsCategoryModel> get reports => _reportsCategoryModel;
  List<ReportOccurenceModel> _reportOccurence = [];
  List<ReportOccurenceModel> get reportOccurence => _reportOccurence;
  List<DisasterModel> _disaster = [];
  List<DisasterModel> get disaster => _disaster;

  List<DisasterOccurenceModel> _disasterOccurence = [];
  List<DisasterOccurenceModel> get disasterOccurence => _disasterOccurence;

  Future getCategories() async {
    _isBusy = true;
    notifyListeners();

    final response =
        await intercepted_client.get(Uri.parse('${SERVERURL}disaster'));

    if (response.statusCode == 200) {
      _disaster = (jsonDecode(response.body)['data'] as List)
          .map((e) => DisasterModel.fromJson(e))
          .toList();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster');
    }
  }

  Future getReportOccurences() async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client
        .get(Uri.parse('${SERVERURL}disaster_occurrences'));

    if (response.statusCode == 200) {
      _disasterOccurence = (jsonDecode(response.body)['data'] as List)
          .map((e) => DisasterOccurenceModel.fromJson(e))
          .toList();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster');
    }
  }

  Future createReport({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client.post(
        Uri.parse('${SERVERURL}disaster_occurrences'),
        body: jsonEncode(payload));
    logger.d(response);
    logger.d(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      getReportOccurences();
      _isBusy = false;
      notifyListeners();
    } else {
      _reportOccurence = [];
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster');
    }
  }
}
