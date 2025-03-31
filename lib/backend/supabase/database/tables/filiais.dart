import '../database.dart';

class FiliaisTable extends SupabaseTable<FiliaisRow> {
  @override
  String get tableName => 'filiais';

  @override
  FiliaisRow createRow(Map<String, dynamic> data) => FiliaisRow(data);
}

class FiliaisRow extends SupabaseDataRow {
  FiliaisRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FiliaisTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);
}
