import '../database.dart';

class EProductsTable extends SupabaseTable<EProductsRow> {
  @override
  String get tableName => 'e_products';

  @override
  EProductsRow createRow(Map<String, dynamic> data) => EProductsRow(data);
}

class EProductsRow extends SupabaseDataRow {
  EProductsRow(super.data);

  @override
  SupabaseTable get table => EProductsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get categoryId => getField<int>('category_id');
  set categoryId(int? value) => setField<int>('category_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get desc => getField<String>('desc');
  set desc(String? value) => setField<String>('desc', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
