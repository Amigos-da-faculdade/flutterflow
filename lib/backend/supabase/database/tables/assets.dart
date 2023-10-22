import '../database.dart';

class AssetsTable extends SupabaseTable<AssetsRow> {
  @override
  String get tableName => 'assets';

  @override
  AssetsRow createRow(Map<String, dynamic> data) => AssetsRow(data);
}

class AssetsRow extends SupabaseDataRow {
  AssetsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AssetsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);
}
