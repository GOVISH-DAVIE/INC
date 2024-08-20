import 'dart:convert';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/features/admin/genders/models/gender_model/gender_model.dart';
import 'package:cais/features/admin/schools_cartegories/models/school_cartegories_model/school_cartegories_model.dart';
import 'package:cais/features/officer/education/models/school_response_model/school_response_model.dart';
import 'package:cais/features/officer/education/models/teacher_designation/teacher_designation.dart';
import 'package:cais/utils/constants.dart';
import 'package:flutter/material.dart';

class EducationNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy;

  List<SchoolResponseModel> _schools = [];
  List<SchoolResponseModel> get schools => _schools;
  List<SchoolCartegoriesModel> _schoolsCategories = [];
  List<SchoolCartegoriesModel> get schoolsCategories => _schoolsCategories;
  List<GenderModel> _gender = [];
  List<GenderModel> get gender => _gender;
  List<TeacherDesignation> _designaiton = [];
  List<TeacherDesignation> get designation => _designaiton;
  Future getSchools() async {
    _isBusy = true;
    notifyListeners();

    final response =
        await intercepted_client.get(Uri.parse('${SERVERURL}schools'));

    if (response.statusCode == 200) {
      _schools = (jsonDecode(response.body)['data'] as List)
          .map((e) => SchoolResponseModel.fromJson(e))
          .toList();
      _isBusy = false;
      notifyListeners();
    } else {
      _schools = [];
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster');
    }
  }

  Future getGenders() async {
    _isBusy = true;
    notifyListeners();

    final response =
        await intercepted_client.get(Uri.parse('${SERVERURL}gender'));

    if (response.statusCode == 200) {
      _gender = (jsonDecode(response.body)['data'] as List)
          .map((e) => GenderModel.fromJson(e))
          .toList();
      _isBusy = false;
      notifyListeners();
    } else {
      _schools = [];
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster');
    }
  }

  Future getSchoolsCategories() async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client
        .get(Uri.parse('${SERVERURL}school_categories'));

    if (response.statusCode == 200) {
      _schoolsCategories = (jsonDecode(response.body)['data'] as List)
          .map((e) => SchoolCartegoriesModel.fromJson(e))
          .toList();
      _isBusy = false;
      notifyListeners();
    } else {
      _schools = [];
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster');
    }
  }

  Future getDesignation() async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client
        .get(Uri.parse('${SERVERURL}teacher_designations'));

    if (response.statusCode == 200) {
      _designaiton = (jsonDecode(response.body)['data'] as List)
          .map((e) => TeacherDesignation.fromJson(e))
          .toList();
      _isBusy = false;
      notifyListeners();
    } else {
      _schools = [];
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster');
    }
  }

  Future createSchool({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client
        .post(Uri.parse('${SERVERURL}schools'), body: jsonEncode(payload));

    if (response.statusCode == 200 || response.statusCode == 201) {
      _isBusy = false;
      notifyListeners();
      getSchools();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster ${response.statusCode}');
    }
  }

  Future createStudents({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client.post(
        Uri.parse('${SERVERURL}school_students'),
        body: jsonEncode(payload));

    if (response.statusCode == 200 || response.statusCode == 201) {
      _isBusy = false;
      notifyListeners();
      getSchools();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster ${response.statusCode}');
    }
  }

  Future createTeachers({required Map payload}) async {
    _isBusy = true;
    notifyListeners();

    final response = await intercepted_client.post(
        Uri.parse('${SERVERURL}school_teachers'),
        body: jsonEncode(payload));

    if (response.statusCode == 200 || response.statusCode == 201) {
      _isBusy = false;
      notifyListeners();
      getSchools();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster ${response.statusCode}');
    }
  }
}
