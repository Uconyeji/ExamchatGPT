import '../database.dart';

class EUserInfoTable extends SupabaseTable<EUserInfoRow> {
  @override
  String get tableName => 'e_user_info';

  @override
  EUserInfoRow createRow(Map<String, dynamic> data) => EUserInfoRow(data);
}

class EUserInfoRow extends SupabaseDataRow {
  EUserInfoRow(super.data);

  @override
  SupabaseTable get table => EUserInfoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);
}
