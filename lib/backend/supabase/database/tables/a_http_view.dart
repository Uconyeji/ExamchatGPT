import '../database.dart';

class AHttpViewTable extends SupabaseTable<AHttpViewRow> {
  @override
  String get tableName => 'a_http_view';

  @override
  AHttpViewRow createRow(Map<String, dynamic> data) => AHttpViewRow(data);
}

class AHttpViewRow extends SupabaseDataRow {
  AHttpViewRow(super.data);

  @override
  SupabaseTable get table => AHttpViewTable();

  int? get status => getField<int>('status');
  set status(int? value) => setField<int>('status', value);

  dynamic get content => getField<dynamic>('content');
  set content(dynamic value) => setField<dynamic>('content', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get completed => getField<String>('completed');
  set completed(String? value) => setField<String>('completed', value);
}
