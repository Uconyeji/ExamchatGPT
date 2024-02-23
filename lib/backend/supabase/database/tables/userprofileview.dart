import '../database.dart';

class UserprofileviewTable extends SupabaseTable<UserprofileviewRow> {
  @override
  String get tableName => 'userprofileview';

  @override
  UserprofileviewRow createRow(Map<String, dynamic> data) =>
      UserprofileviewRow(data);
}

class UserprofileviewRow extends SupabaseDataRow {
  UserprofileviewRow(super.data);

  @override
  SupabaseTable get table => UserprofileviewTable();

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  int? get rightSwipes => getField<int>('right_swipes');
  set rightSwipes(int? value) => setField<int>('right_swipes', value);

  int? get leftSwipes => getField<int>('left_swipes');
  set leftSwipes(int? value) => setField<int>('left_swipes', value);
}
