import '../database.dart';

class APurchasedTable extends SupabaseTable<APurchasedRow> {
  @override
  String get tableName => 'a_purchased';

  @override
  APurchasedRow createRow(Map<String, dynamic> data) => APurchasedRow(data);
}

class APurchasedRow extends SupabaseDataRow {
  APurchasedRow(super.data);

  @override
  SupabaseTable get table => APurchasedTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get product => getField<String>('product');
  set product(String? value) => setField<String>('product', value);
}
