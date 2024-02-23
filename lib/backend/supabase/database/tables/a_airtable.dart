import '../database.dart';

class AAirtableTable extends SupabaseTable<AAirtableRow> {
  @override
  String get tableName => 'a_airtable';

  @override
  AAirtableRow createRow(Map<String, dynamic> data) => AAirtableRow(data);
}

class AAirtableRow extends SupabaseDataRow {
  AAirtableRow(super.data);

  @override
  SupabaseTable get table => AAirtableTable();

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
