import '../database.dart';

class FuncionalidadesTable extends SupabaseTable<FuncionalidadesRow> {
  @override
  String get tableName => 'funcionalidades';

  @override
  FuncionalidadesRow createRow(Map<String, dynamic> data) =>
      FuncionalidadesRow(data);
}

class FuncionalidadesRow extends SupabaseDataRow {
  FuncionalidadesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FuncionalidadesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get chave => getField<String>('chave');
  set chave(String? value) => setField<String>('chave', value);

  String? get moduloId => getField<String>('modulo_id');
  set moduloId(String? value) => setField<String>('modulo_id', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);
}
