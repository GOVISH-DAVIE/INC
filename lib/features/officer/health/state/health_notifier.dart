import 'dart:convert';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/features/officer/health/models/pregnat_moms_model/pregnat_moms_model.dart';
import 'package:cais/features/officer/health/presentation/pregnant_moms/pregnant_moms_list.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class HealthNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => false;

  List<PregnatMomsModel> _pregnantMoms = [];
  List<PregnatMomsModel> get pregnantMoms => _pregnantMoms;
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

  Future getPregnantMoms() async {
    _isBusy = true;
    notifyListeners();

    final response =
        await intercepted_client.get(Uri.parse('${SERVERURL}disaster'));

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
}
