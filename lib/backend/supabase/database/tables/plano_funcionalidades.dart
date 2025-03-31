import '../database.dart';

class PlanoFuncionalidadesTable extends SupabaseTable<PlanoFuncionalidadesRow> {
  @override
  String get tableName => 'plano_funcionalidades';

  @override
  PlanoFuncionalidadesRow createRow(Map<String, dynamic> data) =>
      PlanoFuncionalidadesRow(data);
}

class PlanoFuncionalidadesRow extends SupabaseDataRow {
  PlanoFuncionalidadesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlanoFuncionalidadesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get plano => getField<String>('plano');
  set plano(String? value) => setField<String>('plano', value);

  String? get funcionalidadeId => getField<String>('funcionalidade_id');
  set funcionalidadeId(String? value) =>
      setField<String>('funcionalidade_id', value);
}
