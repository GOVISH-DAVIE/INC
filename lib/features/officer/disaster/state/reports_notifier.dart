import 'dart:convert';
import 'dart:io';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/core/utilities/utilities.dart';
import 'package:cais/features/officer/disaster/model/disaster_model/disaster_model.dart';
import 'package:cais/features/officer/disaster/model/disaster_model/disaster_occurence_model/disaster_occurence_model.dart';
import 'package:cais/features/officer/reports/models/report_occurence_model/report_occurence_model.dart';
import 'package:cais/features/officer/reports/models/reports_category_model/reports_category_model.dart';
import 'package:cais/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DisasterNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;
  final List<ReportsCategoryModel> _reportsCategoryModel = [];
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
      _disaster.sort(
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

  Future createReport({required Map payload, required File img}) async {
    _isBusy = true;
    notifyListeners();
    final Map<String, dynamic> typedPayload =
        Map<String, dynamic>.from(payload);

    FormData fd = FormData.fromMap(typedPayload);
    fd.files.add(
      MapEntry("image", await MultipartFile.fromFile(img.path)),
    );
    // final response = await intercepted_client
    //     .post(Uri.parse('${SERVERURL}disaster_occurrences'), body: fd);

    var uri = Uri.parse('${SERVERURL}disaster_occurrences');

    var request = http.MultipartRequest('POST', uri);

    payload.forEach((key, value) {
      request.fields[key] = value.toString();
    });

    // Add the image file
    request.files.add(await http.MultipartFile.fromPath('image', img.path));

    try {
      final response = await request.send();
      var ll = await http.Response.fromStream(response);
      logger.d(ll.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        // getReportOccurences();
        getReportOccurences();
        _isBusy = false;
        notifyListeners();
      } else {
        logger.w(response);
        _reportOccurence = [];
        _isBusy = false;
        notifyListeners();
        throw Exception('Failed to load Disaster');
      }
    } catch (e) {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to send request: $e');
    }
  }
}
