import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

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

  String _assistantRequest = '';
  String get assistantRequest => _assistantRequest;
  set assistantRequest(String value) {
    _assistantRequest = value;
  }

  List<MessageTypeStruct> _messages = [];
  List<MessageTypeStruct> get messages => _messages;
  set messages(List<MessageTypeStruct> value) {
    _messages = value;
  }

  void addToMessages(MessageTypeStruct value) {
    _messages.add(value);
  }

  void removeFromMessages(MessageTypeStruct value) {
    _messages.remove(value);
  }

  void removeAtIndexFromMessages(int index) {
    _messages.removeAt(index);
  }

  void updateMessagesAtIndex(
    int index,
    MessageTypeStruct Function(MessageTypeStruct) updateFn,
  ) {
    _messages[index] = updateFn(_messages[index]);
  }

  void insertAtIndexInMessages(int index, MessageTypeStruct value) {
    _messages.insert(index, value);
  }
}
