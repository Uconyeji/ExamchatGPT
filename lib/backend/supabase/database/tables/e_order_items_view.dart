import '../database.dart';

class EOrderItemsViewTable extends SupabaseTable<EOrderItemsViewRow> {
  @override
  String get tableName => 'e_order_items_view';

  @override
  EOrderItemsViewRow createRow(Map<String, dynamic> data) =>
      EOrderItemsViewRow(data);
}

class EOrderItemsViewRow extends SupabaseDataRow {
  EOrderItemsViewRow(super.data);

  @override
  SupabaseTable get table => EOrderItemsViewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get orderId => getField<int>('order_id');
  set orderId(int? value) => setField<int>('order_id', value);

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  double? get quantity => getField<double>('quantity');
  set quantity(double? value) => setField<double>('quantity', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  double? get productPrice => getField<double>('product_price');
  set productPrice(double? value) => setField<double>('product_price', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);
}
