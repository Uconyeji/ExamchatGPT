import '../database.dart';

class EOrdersTable extends SupabaseTable<EOrdersRow> {
  @override
  String get tableName => 'e_orders';

  @override
  EOrdersRow createRow(Map<String, dynamic> data) => EOrdersRow(data);
}

class EOrdersRow extends SupabaseDataRow {
  EOrdersRow(super.data);

  @override
  SupabaseTable get table => EOrdersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);
}
