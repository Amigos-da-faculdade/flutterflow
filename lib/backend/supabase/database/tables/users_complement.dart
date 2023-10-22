import '../database.dart';

class UsersComplementTable extends SupabaseTable<UsersComplementRow> {
  @override
  String get tableName => 'users_complement';

  @override
  UsersComplementRow createRow(Map<String, dynamic> data) =>
      UsersComplementRow(data);
}

class UsersComplementRow extends SupabaseDataRow {
  UsersComplementRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UsersComplementTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get phoneNumber => getField<String>('phone_number');
  set phoneNumber(String? value) => setField<String>('phone_number', value);

  double? get age => getField<double>('age');
  set age(double? value) => setField<double>('age', value);

  String get userfk => getField<String>('userfk')!;
  set userfk(String value) => setField<String>('userfk', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get urlPhoto => getField<String>('url_photo');
  set urlPhoto(String? value) => setField<String>('url_photo', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  int? get ongsHelped => getField<int>('ongs_helped');
  set ongsHelped(int? value) => setField<int>('ongs_helped', value);
}
