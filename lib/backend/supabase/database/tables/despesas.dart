import '../database.dart';

class DespesasTable extends SupabaseTable<DespesasRow> {
  @override
  String get tableName => 'despesas';

  @override
  DespesasRow createRow(Map<String, dynamic> data) => DespesasRow(data);
}

class DespesasRow extends SupabaseDataRow {
  DespesasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DespesasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  String? get tenantId => getField<String>('tenant_id');
  set tenantId(String? value) => setField<String>('tenant_id', value);

  String? get tipoId => getField<String>('tipo_id');
  set tipoId(String? value) => setField<String>('tipo_id', value);

  double get valorSolicitado => getField<double>('valor_solicitado')!;
  set valorSolicitado(double value) =>
      setField<double>('valor_solicitado', value);

  double? get valorReembolsavel => getField<double>('valor_reembolsavel');
  set valorReembolsavel(double? value) =>
      setField<double>('valor_reembolsavel', value);

  String? get justificativa => getField<String>('justificativa');
  set justificativa(String? value) => setField<String>('justificativa', value);

  String? get fotoUrl => getField<String>('foto_url');
  set fotoUrl(String? value) => setField<String>('foto_url', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);
}
