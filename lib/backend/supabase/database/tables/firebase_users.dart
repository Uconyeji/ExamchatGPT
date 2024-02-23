import '../database.dart';

class FirebaseUsersTable extends SupabaseTable<FirebaseUsersRow> {
  @override
  String get tableName => 'firebase_users';

  @override
  FirebaseUsersRow createRow(Map<String, dynamic> data) =>
      FirebaseUsersRow(data);
}

class FirebaseUsersRow extends SupabaseDataRow {
  FirebaseUsersRow(super.data);

  @override
  SupabaseTable get table => FirebaseUsersTable();

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  dynamic get attrs => getField<dynamic>('attrs');
  set attrs(dynamic value) => setField<dynamic>('attrs', value);
}
