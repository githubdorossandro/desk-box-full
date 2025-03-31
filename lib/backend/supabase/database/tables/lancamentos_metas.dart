import '../database.dart';

class LancamentosMetasTable extends SupabaseTable<LancamentosMetasRow> {
  @override
  String get tableName => 'lancamentos_metas';

  @override
  LancamentosMetasRow createRow(Map<String, dynamic> data) =>
      LancamentosMetasRow(data);
}

class LancamentosMetasRow extends SupabaseDataRow {
  LancamentosMetasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LancamentosMetasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  String? get metaId => getField<String>('meta_id');
  set metaId(String? value) => setField<String>('meta_id', value);

  int get quantidade => getField<int>('quantidade')!;
  set quantidade(int value) => setField<int>('quantidade', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);
}
