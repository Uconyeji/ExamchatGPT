import '../database.dart';

class WrappersFdwStatsTable extends SupabaseTable<WrappersFdwStatsRow> {
  @override
  String get tableName => 'wrappers_fdw_stats';

  @override
  WrappersFdwStatsRow createRow(Map<String, dynamic> data) =>
      WrappersFdwStatsRow(data);
}

class WrappersFdwStatsRow extends SupabaseDataRow {
  WrappersFdwStatsRow(super.data);

  @override
  SupabaseTable get table => WrappersFdwStatsTable();

  String get fdwName => getField<String>('fdw_name')!;
  set fdwName(String value) => setField<String>('fdw_name', value);

  int? get createTimes => getField<int>('create_times');
  set createTimes(int? value) => setField<int>('create_times', value);

  int? get rowsIn => getField<int>('rows_in');
  set rowsIn(int? value) => setField<int>('rows_in', value);

  int? get rowsOut => getField<int>('rows_out');
  set rowsOut(int? value) => setField<int>('rows_out', value);

  int? get bytesIn => getField<int>('bytes_in');
  set bytesIn(int? value) => setField<int>('bytes_in', value);

  int? get bytesOut => getField<int>('bytes_out');
  set bytesOut(int? value) => setField<int>('bytes_out', value);

  dynamic get metadata => getField<dynamic>('metadata');
  set metadata(dynamic value) => setField<dynamic>('metadata', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
