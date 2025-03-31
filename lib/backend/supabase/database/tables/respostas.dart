import '../database.dart';

class RespostasTable extends SupabaseTable<RespostasRow> {
  @override
  String get tableName => 'respostas';

  @override
  RespostasRow createRow(Map<String, dynamic> data) => RespostasRow(data);
}

class RespostasRow extends SupabaseDataRow {
  RespostasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RespostasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  String? get formacaoId => getField<String>('formacao_id');
  set formacaoId(String? value) => setField<String>('formacao_id', value);

  String? get perguntaId => getField<String>('pergunta_id');
  set perguntaId(String? value) => setField<String>('pergunta_id', value);

  String? get resposta => getField<String>('resposta');
  set resposta(String? value) => setField<String>('resposta', value);

  bool? get correto => getField<bool>('correto');
  set correto(bool? value) => setField<bool>('correto', value);
}
