import '../database.dart';

class OngsTable extends SupabaseTable<OngsRow> {
  @override
  String get tableName => 'ongs';

  @override
  OngsRow createRow(Map<String, dynamic> data) => OngsRow(data);
}

class OngsRow extends SupabaseDataRow {
  OngsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OngsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get assetsId => getField<int>('assets_id')!;
  set assetsId(int value) => setField<int>('assets_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get url => getField<String>('url');
  set url(String? value) => setField<String>('url', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get taxId => getField<String>('tax_id');
  set taxId(String? value) => setField<String>('tax_id', value);

  String? get corporateReason => getField<String>('corporate_reason');
  set corporateReason(String? value) =>
      setField<String>('corporate_reason', value);

  double? get amountGoal => getField<double>('amount_goal');
  set amountGoal(double? value) => setField<double>('amount_goal', value);

  String? get logo => getField<String>('logo');
  set logo(String? value) => setField<String>('logo', value);
}
