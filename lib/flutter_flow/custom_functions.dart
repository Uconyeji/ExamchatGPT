import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic generateMessage(String newMessage) {
  List<Map<String, String>> msgs = [
    {"role": "user", "content": newMessage}
  ];

  return jsonEncode(msgs);
}

dynamic generateMessages(
  List<MessagesRecord> messages,
  String newMessage,
) {
  List<Map<String, String>> msgs = [];
  messages.forEach((element) {
    msgs.add({
      "role": element.user == "ChatGPT" ? "assistant" : "user",
      "content": element.message!
    });
  });

  msgs.add({"role": "user", "content": newMessage});

  return jsonEncode(msgs);
}
