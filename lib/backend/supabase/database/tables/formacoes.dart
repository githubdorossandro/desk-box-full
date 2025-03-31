import '../database.dart';

class FormacoesTable extends SupabaseTable<FormacoesRow> {
  @override
  String get tableName => 'formacoes';

  @override
  FormacoesRow createRow(Map<String, dynamic> data) => FormacoesRow(data);
}

class FormacoesRow extends SupabaseDataRow {
  FormacoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FormacoesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get tenantId => getField<String>('tenant_id');
  set tenantId(String? value) => setField<String>('tenant_id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  int? get cargaHoraria => getField<int>('carga_horaria');
  set cargaHoraria(int? value) => setField<int>('carga_horaria', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
