import 'dart:convert';
import 'dart:io';

import 'package:cais/core/network/http_client.dart';
import 'package:cais/core/utilities/utilities.dart'; 
import 'package:cais/features/officer/projects/state/projects_model/projects_model.dart'; 
import 'package:cais/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProjectNotifier extends ChangeNotifier {
  bool _isBusy = false;
  bool get isBusy => _isBusy; 

  List<ProjectsModel> _projects = [];
  List<ProjectsModel> get projects => _projects;

  Future getProjects() async {
    _isBusy = true;
    notifyListeners();

    final response =
        await intercepted_client.get(Uri.parse('${SERVERURL}projects'));

    if (response.statusCode == 200) {
      _projects = (jsonDecode(response.body)['data'] as List)
          .map((e) => ProjectsModel.fromJson(e))
          .toList();
      _isBusy = false;
      notifyListeners();
    } else {
      _isBusy = false;
      notifyListeners();
      throw Exception('Failed to load Disaster');
    }
  }

 
  Future createProject({required Map payload, required File img}) async {
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

    var uri = Uri.parse('${SERVERURL}projects');

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
      logger.d(response.statusCode);

      if (response.statusCode == 200 || response.statusCode == 201) {
        // getProjects();
        _isBusy = false;
        notifyListeners();
      } else {
        logger.w(response);
        _projects = [];
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
