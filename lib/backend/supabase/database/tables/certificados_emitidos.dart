import '../database.dart';

class CertificadosEmitidosTable extends SupabaseTable<CertificadosEmitidosRow> {
  @override
  String get tableName => 'certificados_emitidos';

  @override
  CertificadosEmitidosRow createRow(Map<String, dynamic> data) =>
      CertificadosEmitidosRow(data);
}

class CertificadosEmitidosRow extends SupabaseDataRow {
  CertificadosEmitidosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CertificadosEmitidosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String get referenciaId => getField<String>('referencia_id')!;
  set referenciaId(String value) => setField<String>('referencia_id', value);

  String? get arquivoUrl => getField<String>('arquivo_url');
  set arquivoUrl(String? value) => setField<String>('arquivo_url', value);

  DateTime? get emitidoEm => getField<DateTime>('emitido_em');
  set emitidoEm(DateTime? value) => setField<DateTime>('emitido_em', value);
}
