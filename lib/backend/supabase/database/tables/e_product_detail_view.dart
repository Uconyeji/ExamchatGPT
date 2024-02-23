import '../database.dart';

class EProductDetailViewTable extends SupabaseTable<EProductDetailViewRow> {
  @override
  String get tableName => 'e_product_detail_view';

  @override
  EProductDetailViewRow createRow(Map<String, dynamic> data) =>
      EProductDetailViewRow(data);
}

class EProductDetailViewRow extends SupabaseDataRow {
  EProductDetailViewRow(super.data);

  @override
  SupabaseTable get table => EProductDetailViewTable();

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get productDesc => getField<String>('product_desc');
  set productDesc(String? value) => setField<String>('product_desc', value);

  String? get productImage => getField<String>('product_image');
  set productImage(String? value) => setField<String>('product_image', value);

  double? get productPrice => getField<double>('product_price');
  set productPrice(double? value) => setField<double>('product_price', value);

  int? get reviewCount => getField<int>('review_count');
  set reviewCount(int? value) => setField<int>('review_count', value);

  double? get averageRating => getField<double>('average_rating');
  set averageRating(double? value) => setField<double>('average_rating', value);
}
