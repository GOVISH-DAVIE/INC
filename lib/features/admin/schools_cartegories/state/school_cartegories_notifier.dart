import 'dart:convert';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/features/admin/ethnicity/models/ethnicity/ethnicity.dart';
import 'package:cais/features/admin/schools_cartegories/models/school_cartegories_model/school_cartegories_model.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class SchoolCartegoriesNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;
  List<SchoolCartegoriesModel> _schoolCargetories = [];
  List<SchoolCartegoriesModel> get schoolCategories => _schoolCargetories;
  Future getCategories() async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client
        .get(Uri.parse('${SERVERURL}school_categories'));

    if (response.statusCode == 200) {
      _schoolCargetories = (jsonDecode(response.body)['data'] as List)
          .map((e) => SchoolCartegoriesModel.fromJson(e))
          .toList();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;

      _schoolCargetories = [];
      notifyListeners();
      throw Exception('Failed to load Disaster');
    }
  }

  Future createCategories({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client.post(
        Uri.parse('${SERVERURL}school_categories'),
        body: jsonEncode(payload));

    if (response.statusCode == 200 || response.statusCode == 201) {
      getCategories();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster ${response.statusCode}');
    }
  }
}
