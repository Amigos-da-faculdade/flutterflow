import '../database.dart';

class DonationTable extends SupabaseTable<DonationRow> {
  @override
  String get tableName => 'donation';

  @override
  DonationRow createRow(Map<String, dynamic> data) => DonationRow(data);
}

class DonationRow extends SupabaseDataRow {
  DonationRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DonationTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get ongId => getField<int>('ong_id')!;
  set ongId(int value) => setField<int>('ong_id', value);

  int get assetId => getField<int>('asset_id')!;
  set assetId(int value) => setField<int>('asset_id', value);

  double get amount => getField<double>('amount')!;
  set amount(double value) => setField<double>('amount', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
