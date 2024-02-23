import '../database.dart';

class EReviewsTable extends SupabaseTable<EReviewsRow> {
  @override
  String get tableName => 'e_reviews';

  @override
  EReviewsRow createRow(Map<String, dynamic> data) => EReviewsRow(data);
}

class EReviewsRow extends SupabaseDataRow {
  EReviewsRow(super.data);

  @override
  SupabaseTable get table => EReviewsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  String? get review => getField<String>('review');
  set review(String? value) => setField<String>('review', value);

  int? get orderItemId => getField<int>('order_item_id');
  set orderItemId(int? value) => setField<int>('order_item_id', value);
}
