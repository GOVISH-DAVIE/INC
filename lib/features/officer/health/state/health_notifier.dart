import 'dart:convert';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/features/officer/health/models/birth_model/birth_model.dart';
import 'package:cais/features/officer/health/models/pregnat_moms_model/pregnat_moms_model.dart';
import 'package:cais/features/officer/health/models/vaccinces_response_model/vaccinces_response_model.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class HealthNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;

  List<PregnatMomsModel> _pregnantMoms = [];
  List<PregnatMomsModel> get pregnantMoms => _pregnantMoms;

  List<BirthModel> _births = [];
  List<BirthModel> get births => _births;

  List<VaccincesResponseModel> _vaccinesissue = [];
  List<VaccincesResponseModel> get vaccinesissue => _vaccinesissue;
  Future createPregnantMom({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client.post(
        Uri.parse('${SERVERURL}pregnancy_moms'),
        body: jsonEncode(payload));

    if (response.statusCode == 200 || response.statusCode == 201) {
      getPregnantMoms();
      // get
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster ${response.statusCode}');
    }
  }

  Future createBirth({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client
        .post(Uri.parse('${SERVERURL}child-birth'), body: jsonEncode(payload));

    if (response.statusCode == 200 || response.statusCode == 201) {
      getBirth();
      // get
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster ${response.statusCode}');
    }
  }

  Future createVaccine({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client
        .post(Uri.parse('${SERVERURL}vaccines'), body: jsonEncode(payload));

    if (response.statusCode == 200 || response.statusCode == 201) {
      getBirth();
      // get
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Vaccines ${response.statusCode}');
    }
  }

  Future getVaccines() async {
    _isBusy = true;
    notifyListeners();

    final response =
        await intercepted_client.get(Uri.parse('${SERVERURL}vaccines'));

    if (response.statusCode == 200) {
      _vaccinesissue = (jsonDecode(response.body)['data'] as List)
          .map((e) => VaccincesResponseModel.fromJson(e))
          .toList();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster');
    }
  }

  Future getPregnantMoms() async {
    _isBusy = true;
    notifyListeners();

    final response =
        await intercepted_client.get(Uri.parse('${SERVERURL}pregnancy_moms'));

    if (response.statusCode == 200) {
      _pregnantMoms = (jsonDecode(response.body)['data'] as List)
          .map((e) => PregnatMomsModel.fromJson(e))
          .toList();
      _isBusy = false;
      notifyListeners();
      _pregnantMoms.sort(
          (a, b) => a.name!.toLowerCase().compareTo(b.name!.toLowerCase()));
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster');
    }
  }

  Future getBirth() async {
    _isBusy = true;
    notifyListeners();

    final response =
        await intercepted_client.get(Uri.parse('${SERVERURL}child-birth'));

    if (response.statusCode == 200) {
      _births = (jsonDecode(response.body)['data'] as List)
          .map((e) => BirthModel.fromJson(e))
          .toList();
      _isBusy = false;
      notifyListeners();
      _births.sort(
          (a, b) => a.name!.toLowerCase().compareTo(b.name!.toLowerCase()));
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster');
    }
  }
}
