import '../database.dart';

class AUsersTable extends SupabaseTable<AUsersRow> {
  @override
  String get tableName => 'a_users';

  @override
  AUsersRow createRow(Map<String, dynamic> data) => AUsersRow(data);
}

class AUsersRow extends SupabaseDataRow {
  AUsersRow(super.data);

  @override
  SupabaseTable get table => AUsersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double? get age => getField<double>('age');
  set age(double? value) => setField<double>('age', value);
}
