import '../database.dart';

class ProgressoFormacaoTable extends SupabaseTable<ProgressoFormacaoRow> {
  @override
  String get tableName => 'progresso_formacao';

  @override
  ProgressoFormacaoRow createRow(Map<String, dynamic> data) =>
      ProgressoFormacaoRow(data);
}

class ProgressoFormacaoRow extends SupabaseDataRow {
  ProgressoFormacaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProgressoFormacaoTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  String? get formacaoId => getField<String>('formacao_id');
  set formacaoId(String? value) => setField<String>('formacao_id', value);

  int? get aulasConcluidas => getField<int>('aulas_concluidas');
  set aulasConcluidas(int? value) => setField<int>('aulas_concluidas', value);

  double? get percentualAcerto => getField<double>('percentual_acerto');
  set percentualAcerto(double? value) =>
      setField<double>('percentual_acerto', value);

  bool? get certificadoEmitido => getField<bool>('certificado_emitido');
  set certificadoEmitido(bool? value) =>
      setField<bool>('certificado_emitido', value);
}
