import '../database.dart';

class SwipesTable extends SupabaseTable<SwipesRow> {
  @override
  String get tableName => 'swipes';

  @override
  SwipesRow createRow(Map<String, dynamic> data) => SwipesRow(data);
}

class SwipesRow extends SupabaseDataRow {
  SwipesRow(super.data);

  @override
  SupabaseTable get table => SwipesTable();

  int get swipeId => getField<int>('swipe_id')!;
  set swipeId(int value) => setField<int>('swipe_id', value);

  String? get swiperId => getField<String>('swiper_id');
  set swiperId(String? value) => setField<String>('swiper_id', value);

  String? get swipeeId => getField<String>('swipee_id');
  set swipeeId(String? value) => setField<String>('swipee_id', value);

  bool get swipeDirection => getField<bool>('swipe_direction')!;
  set swipeDirection(bool value) => setField<bool>('swipe_direction', value);

  DateTime? get swipedAt => getField<DateTime>('swiped_at');
  set swipedAt(DateTime? value) => setField<DateTime>('swiped_at', value);
}
