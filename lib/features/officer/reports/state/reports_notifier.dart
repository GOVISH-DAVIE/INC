import 'dart:convert';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/features/officer/reports/models/report_occurence_model/report_occurence_model.dart';
import 'package:cais/features/officer/reports/models/reports_category_model/reports_category_model.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class ReportsNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;
  List<ReportsCategoryModel> _reportsCategoryModel = [];
  List<ReportsCategoryModel> get reports => _reportsCategoryModel;
  List<ReportOccurenceModel> _reportOccurence = [];
  List<ReportOccurenceModel> get reportOccurence => _reportOccurence;

  Future getCategories() async {
    _isBusy = true;
    notifyListeners();

    final response =
        await intercepted_client.get(Uri.parse('${SERVERURL}reports'));

    if (response.statusCode == 200) {
      _reportsCategoryModel = (jsonDecode(response.body)['data'] as List)
          .map((e) => ReportsCategoryModel.fromJson(e))
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
        .get(Uri.parse('${SERVERURL}report_occurrences'));

    if (response.statusCode == 200) {
      _reportOccurence = (jsonDecode(response.body)['data'] as List)
          .map((e) => ReportOccurenceModel.fromJson(e))
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
        Uri.parse('${SERVERURL}report_occurrences'),
        body: jsonEncode(payload));

    if (response.statusCode == 200 ||response.statusCode == 200) {
      getReportOccurences();
      _isBusy = false;
      notifyListeners();
    } else {
      _reportOccurence = [];
      _isBusy = false;
      notifyListeners();  
      getReportOccurences();
      // throw Exception('Failed to load Disaster');
    }
  }
}
