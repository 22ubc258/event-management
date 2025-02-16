import 'package:flutter/material.dart';
import '/backend/schema/enums/enums.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  dynamic _event = jsonDecode(
      '[{\"title\":\"Wedding\",\"description\":\"Discover perfect wedding locations\",\"imageUrl\":\"https://images.unsplash.com/photo-1519741497674-611481863552?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D\"},{\"title\":\"Wedding Combo\",\"description\":\"Combo Include Bachelor Party\",\"imageUrl\":\"https://images.unsplash.com/photo-1504993945773-3f38e1b6a626?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D\"},{\"title\":\"Birthday Party\",\"description\":\"Celebrate fun filled Birthday\",\"imageUrl\":\"https://plus.unsplash.com/premium_photo-1683121073242-7bde1375c742?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D\"},{\"title\":\"First Holy\",\"description\":\"Special Day for a Child\",\"imageUrl\":\"https://plus.unsplash.com/premium_photo-1680089169270-23342691156e?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D\"},{\"title\":\"Baptism\",\"description\":\"Discover perfect wedding locations\",\"imageUrl\":\"https://images.unsplash.com/photo-1550633794-58a2127a9027?q=80&w=2970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D\"}]');
  dynamic get event => _event;
  set event(dynamic value) {
    _event = value;
  }

  Venuetype? _venueType = Venuetype.indoor;
  Venuetype? get venueType => _venueType;
  set venueType(Venuetype? value) {
    _venueType = value;
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
  }
}
