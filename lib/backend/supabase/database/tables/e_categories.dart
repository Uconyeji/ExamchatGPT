import '../database.dart';

class ECategoriesTable extends SupabaseTable<ECategoriesRow> {
  @override
  String get tableName => 'e_categories';

  @override
  ECategoriesRow createRow(Map<String, dynamic> data) => ECategoriesRow(data);
}

class ECategoriesRow extends SupabaseDataRow {
  ECategoriesRow(super.data);

  @override
  SupabaseTable get table => ECategoriesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
