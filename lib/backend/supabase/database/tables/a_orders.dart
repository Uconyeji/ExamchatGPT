import '../database.dart';

class AOrdersTable extends SupabaseTable<AOrdersRow> {
  @override
  String get tableName => 'a_orders';

  @override
  AOrdersRow createRow(Map<String, dynamic> data) => AOrdersRow(data);
}

class AOrdersRow extends SupabaseDataRow {
  AOrdersRow(super.data);

  @override
  SupabaseTable get table => AOrdersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
