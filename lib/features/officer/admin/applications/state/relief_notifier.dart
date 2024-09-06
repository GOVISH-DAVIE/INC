import 'dart:convert';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class ApplicationsNotifier extends ChangeNotifier{

  bool _isBusy = false;
  bool get isBusy =>_isBusy;
   Future getCategories() async {
    _isBusy = true;
    notifyListeners();

    final response =
        await intercepted_client.get(Uri.parse('${SERVERURL}reports'));

    if (response.statusCode == 200) {
      // _reportsCategoryModel = (jsonDecode(source)(response.body)['data'] as List)
      //     .map((e) => ReportsCategoryModel.fromJson(e))
      //     .toList()
      
 
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


    Future createApplications({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client
        .post(Uri.parse('${SERVERURL}counties'), body: jsonEncode(payload));

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