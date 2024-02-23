import '../database.dart';

class EOrderItemsTable extends SupabaseTable<EOrderItemsRow> {
  @override
  String get tableName => 'e_order_items';

  @override
  EOrderItemsRow createRow(Map<String, dynamic> data) => EOrderItemsRow(data);
}

class EOrderItemsRow extends SupabaseDataRow {
  EOrderItemsRow(super.data);

  @override
  SupabaseTable get table => EOrderItemsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get orderId => getField<int>('order_id');
  set orderId(int? value) => setField<int>('order_id', value);

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  double? get quantity => getField<double>('quantity');
  set quantity(double? value) => setField<double>('quantity', value);
}
