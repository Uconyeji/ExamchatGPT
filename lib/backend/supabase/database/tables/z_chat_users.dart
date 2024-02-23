import '../database.dart';

class ZChatUsersTable extends SupabaseTable<ZChatUsersRow> {
  @override
  String get tableName => 'z_chat_users';

  @override
  ZChatUsersRow createRow(Map<String, dynamic> data) => ZChatUsersRow(data);
}

class ZChatUsersRow extends SupabaseDataRow {
  ZChatUsersRow(super.data);

  @override
  SupabaseTable get table => ZChatUsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get chatId => getField<int>('chat_id');
  set chatId(int? value) => setField<int>('chat_id', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);
}
