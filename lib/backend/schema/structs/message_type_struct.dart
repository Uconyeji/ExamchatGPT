// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessageTypeStruct extends FFFirebaseStruct {
  MessageTypeStruct({
    String? type,
    String? role,
    String? message,
    String? imageUrl,
    DateTime? timestamp,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _type = type,
        _role = role,
        _message = message,
        _imageUrl = imageUrl,
        _timestamp = timestamp,
        super(firestoreUtilData);

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  set role(String? val) => _role = val;
  bool hasRole() => _role != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;
  bool hasMessage() => _message != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;
  bool hasImageUrl() => _imageUrl != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  set timestamp(DateTime? val) => _timestamp = val;
  bool hasTimestamp() => _timestamp != null;

  static MessageTypeStruct fromMap(Map<String, dynamic> data) =>
      MessageTypeStruct(
        type: data['type'] as String?,
        role: data['role'] as String?,
        message: data['message'] as String?,
        imageUrl: data['imageUrl'] as String?,
        timestamp: data['timestamp'] as DateTime?,
      );

  static MessageTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? MessageTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'role': _role,
        'message': _message,
        'imageUrl': _imageUrl,
        'timestamp': _timestamp,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'role': serializeParam(
          _role,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'imageUrl': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
        'timestamp': serializeParam(
          _timestamp,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static MessageTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessageTypeStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        role: deserializeParam(
          data['role'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['imageUrl'],
          ParamType.String,
          false,
        ),
        timestamp: deserializeParam(
          data['timestamp'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'MessageTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MessageTypeStruct &&
        type == other.type &&
        role == other.role &&
        message == other.message &&
        imageUrl == other.imageUrl &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([type, role, message, imageUrl, timestamp]);
}

MessageTypeStruct createMessageTypeStruct({
  String? type,
  String? role,
  String? message,
  String? imageUrl,
  DateTime? timestamp,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MessageTypeStruct(
      type: type,
      role: role,
      message: message,
      imageUrl: imageUrl,
      timestamp: timestamp,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MessageTypeStruct? updateMessageTypeStruct(
  MessageTypeStruct? messageType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    messageType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMessageTypeStructData(
  Map<String, dynamic> firestoreData,
  MessageTypeStruct? messageType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (messageType == null) {
    return;
  }
  if (messageType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && messageType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final messageTypeData =
      getMessageTypeFirestoreData(messageType, forFieldValue);
  final nestedData =
      messageTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = messageType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMessageTypeFirestoreData(
  MessageTypeStruct? messageType, [
  bool forFieldValue = false,
]) {
  if (messageType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(messageType.toMap());

  // Add any Firestore field values
  messageType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMessageTypeListFirestoreData(
  List<MessageTypeStruct>? messageTypes,
) =>
    messageTypes?.map((e) => getMessageTypeFirestoreData(e, true)).toList() ??
    [];
