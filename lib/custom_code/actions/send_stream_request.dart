// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'dart:convert';
import 'package:fetch_client/fetch_client.dart';
import 'package:http/http.dart';

Future sendStreamRequest(Future<dynamic> Function() cb, String apiKey,
    String message, String type, String? imageUrl) async {
  // Add your function code here!
  String _url = 'https://api.openai.com/v1/chat/completions';
  String _apiKey = apiKey;

  // MessageTypeStruct myMessage = MessageTypeStruct(
  //   role: "user",
  //   message: message,
  //   timestamp: DateTime.now(),
  // );

  // // add our message
  // FFAppState().messages.add(myMessage);

  // create response object
  MessageTypeStruct assistantMessage = MessageTypeStruct(
    role: "assistant",
    message: 'Thinking…',
    type: type,
    imageUrl: imageUrl,
    timestamp: DateTime.now(),
  );

  // add response (unfinished)
  FFAppState().messages.add(assistantMessage);

  int assistantMessageIndex = FFAppState().messages.length - 1;

  final client = FetchClient(
    mode: RequestMode.cors,
    streamRequests: true,
  );

  final uri = Uri.parse(_url);
  String requestBody = '';

  // include the previous messages
  var previousMessages = FFAppState()
      .messages
      .take(FFAppState().messages.length - 1) // Excluding the last message
      .map((msg) {
    if (msg.type == 'text') {
      return {"role": msg.role, "content": msg.message};
    } else if (msg.type == 'image') {
      return {
        "role": msg.role,
        "content": [
          {"type": "text", "text": msg.message},
          {
            "type": "image_url",
            "image_url": {"url": msg.imageUrl}
          }
        ]
      };
    }
  }).toList();

  if (type == 'text') {
    requestBody = json.encode({
      "model": "gpt-3.5-turbo",
      "messages": [
        {"role": "system", "content": "You are a helpful assistant."},
        ...previousMessages.where((msg) => msg!['content'] is String),
        {"role": "user", "content": "${message}"}
      ],
      "stream": true
    });
  } else if (type == 'image') {
    requestBody = json.encode({
      "model": "gpt-4-vision-preview",
      "messages": [
        ...previousMessages,
        {
          "role": "user",
          "content": [
            {"type": "text", "text": "${message}"},
            {
              "type": "image_url",
              "image_url": {"url": "${imageUrl}"}
            }
          ]
        }
      ],
      "stream": true,
      "max_tokens": 512,
    });
  }

  final stream = (() async* {
    yield Uint8List.fromList(requestBody.codeUnits);
  })();

  final request = StreamedRequest('POST', uri)
    ..headers.addAll({
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${_apiKey}',
    });

  stream.listen(
    request.sink.add,
    onDone: request.sink.close,
    onError: request.sink.addError,
  );

  final response = await client.send(request);

  response.stream
      .transform(utf8.decoder)
      .transform(const LineSplitter())
      .listen((String line) {
    if (FFAppState().messages[assistantMessageIndex].message == 'Thinking…') {
      FFAppState().messages[assistantMessageIndex].message = '';
    }

    if (line.isNotEmpty) {
      print(line);
      String jsonLine = line.startsWith('data: ') ? line.substring(5) : line;
      try {
        var jsonData = json.decode(jsonLine);
        var choices = jsonData['choices'] as List<dynamic>;
        if (choices.isNotEmpty) {
          var firstChoice = choices[0];
          var delta = firstChoice['delta'];
          if (delta != null) {
            var content = delta['content'] ?? ''; // Use an empty string if null
            var role = delta['role'] ?? ''; // Use an empty string if null

            // Handle the content and role here
            print('Role: $role, Content: $content');

            FFAppState().messages[assistantMessageIndex].message += content;
            cb();
          }
        }
      } catch (e) {
        print('Error parsing JSON: $e');
      }
    }
  },
          onDone: () => print('Stream closed'),
          onError: (error) => print('Error: $error'));
}
