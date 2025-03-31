import '../database.dart';

class ProgressoTreinamentoTable extends SupabaseTable<ProgressoTreinamentoRow> {
  @override
  String get tableName => 'progresso_treinamento';

  @override
  ProgressoTreinamentoRow createRow(Map<String, dynamic> data) =>
      ProgressoTreinamentoRow(data);
}

class ProgressoTreinamentoRow extends SupabaseDataRow {
  ProgressoTreinamentoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProgressoTreinamentoTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  String? get treinamentoId => getField<String>('treinamento_id');
  set treinamentoId(String? value) => setField<String>('treinamento_id', value);

  bool? get assistiuVideo => getField<bool>('assistiu_video');
  set assistiuVideo(bool? value) => setField<bool>('assistiu_video', value);

  bool? get certificadoEmitido => getField<bool>('certificado_emitido');
  set certificadoEmitido(bool? value) =>
      setField<bool>('certificado_emitido', value);
}
