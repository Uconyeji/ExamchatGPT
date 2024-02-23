import '../database.dart';

class CarInfoTable extends SupabaseTable<CarInfoRow> {
  @override
  String get tableName => 'car_info';

  @override
  CarInfoRow createRow(Map<String, dynamic> data) => CarInfoRow(data);
}

class CarInfoRow extends SupabaseDataRow {
  CarInfoRow(super.data);

  @override
  SupabaseTable get table => CarInfoTable();

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get brand => getField<String>('brand');
  set brand(String? value) => setField<String>('brand', value);

  String? get model => getField<String>('model');
  set model(String? value) => setField<String>('model', value);
}
