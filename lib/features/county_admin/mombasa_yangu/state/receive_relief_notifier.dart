import 'dart:convert';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/core/utilities/logging_utils.dart';
import 'package:cais/features/county_admin/mombasa_yangu/models/mombasayangu_employees_model/mombasayangu_employees_model.dart';
import 'package:cais/features/county_admin/mombasa_yangu/models/ward_response_model/ward_response_model.dart';
import 'package:cais/features/county_admin/mombasa_yangu/mombasa_yangu_employees.dart';
import 'package:cais/features/county_admin/receive/models/receive_relief_model/receive_relief_model.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class MombasaYanguNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;

  final List<ReceiveReliefModel> _relief = [];
  List<ReceiveReliefModel> get relief => _relief;
  List<WardResponseModel> _wardResponseModel = [];
  List<WardResponseModel> get wardResponseModel => _wardResponseModel;
  List<MombasayanguEmployeesModel> _employees = [];
  List<MombasayanguEmployeesModel> get employees => _employees;
  Future getReceivership() async {
    _isBusy = true;
    notifyListeners();

    final response =
        await intercepted_client.get(Uri.parse('${SERVERURL}mombasa_yangu'));

    if (response.statusCode == 200) {
      _employees = (jsonDecode(response.body)['data'] as List)
          .map((e) => MombasayanguEmployeesModel.fromJson(e))
          .toList();

      _isBusy = false;
      notifyListeners();

      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster');
    }
  }

  Future getWards() async {
    _isBusy = true;
    notifyListeners();

    final response =
        await intercepted_client.get(Uri.parse('${SERVERURL}ward'));

    if (response.statusCode == 200) {
      _wardResponseModel = (jsonDecode(response.body)['data'] as List)
          .map((e) => WardResponseModel.fromJson(e))
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

  Future createUser({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client.post(
        Uri.parse('${SERVERURL}mombasa_yangu'),
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
