import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:cais/core/utilities/logging_utils.dart';
import 'package:http/http.dart' as http;
import 'package:cais/core/network/http_client.dart';
import 'package:cais/features/officer/reports/models/report_occurence_model/report_occurence_model.dart';
import 'package:cais/features/officer/reports/models/reports_category_model/reports_category_model.dart';
import 'package:cais/utils/constants.dart';
import 'package:dio/dio.dart';
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

      _reportsCategoryModel.sort(
          (a, b) => a.name!.toLowerCase().compareTo(b.name!.toLowerCase()));
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

  Future createReport({required Map payload, File? image}) async {
    _isBusy = true;
    notifyListeners();

    final Map<String, dynamic> typedPayload =
        Map<String, dynamic>.from(payload);

    FormData fd = FormData.fromMap(typedPayload);

    var uri = Uri.parse('${SERVERURL}report_occurrences');

    var request = http.MultipartRequest('POST', uri);

    payload.forEach((key, value) {
      request.fields[key] = value.toString();
    });
    if (image != null) {
      log("adding image");
      fd.files.add(
        MapEntry("image", await MultipartFile.fromFile(image.path)),
      );

      // Add the image file
      request.files.add(await http.MultipartFile.fromPath('image', image.path));
    }

    try {
      final response = await request.send();
      var ll = await http.Response.fromStream(response);
      logger.d(ll.body);
      if (response.statusCode == 200 || response.statusCode == 200) {
        getReportOccurences();
        _isBusy = false;
        notifyListeners();
      } else {
        _isBusy = false;
        notifyListeners();
        getReportOccurences();
        // throw Exception('Failed to load Disaster');
      }
    } catch (e) {
      _isBusy = false;
      notifyListeners();
      getReportOccurences();
    }

    // final response = await intercepted_client.post(
    //     Uri.parse('${SERVERURL}report_occurrences'),
    //     body: jsonEncode(payload));
  }
}
