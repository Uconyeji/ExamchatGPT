import '../database.dart';

class ZUsersInfoTable extends SupabaseTable<ZUsersInfoRow> {
  @override
  String get tableName => 'z_users_info';

  @override
  ZUsersInfoRow createRow(Map<String, dynamic> data) => ZUsersInfoRow(data);
}

class ZUsersInfoRow extends SupabaseDataRow {
  ZUsersInfoRow(super.data);

  @override
  SupabaseTable get table => ZUsersInfoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get username => getField<String>('username');
  set username(String? value) => setField<String>('username', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
