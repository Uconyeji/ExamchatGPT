import '../database.dart';

class ZChatsTable extends SupabaseTable<ZChatsRow> {
  @override
  String get tableName => 'z_chats';

  @override
  ZChatsRow createRow(Map<String, dynamic> data) => ZChatsRow(data);
}

class ZChatsRow extends SupabaseDataRow {
  ZChatsRow(super.data);

  @override
  SupabaseTable get table => ZChatsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get lastMessage => getField<String>('last_message');
  set lastMessage(String? value) => setField<String>('last_message', value);
}
