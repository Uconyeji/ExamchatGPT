import '../database.dart';

class FirebaseProductsTable extends SupabaseTable<FirebaseProductsRow> {
  @override
  String get tableName => 'firebase_products';

  @override
  FirebaseProductsRow createRow(Map<String, dynamic> data) =>
      FirebaseProductsRow(data);
}

class FirebaseProductsRow extends SupabaseDataRow {
  FirebaseProductsRow(super.data);

  @override
  SupabaseTable get table => FirebaseProductsTable();

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  dynamic get attrs => getField<dynamic>('attrs');
  set attrs(dynamic value) => setField<dynamic>('attrs', value);
}
