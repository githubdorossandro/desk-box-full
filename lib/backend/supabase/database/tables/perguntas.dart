import '../database.dart';

class PerguntasTable extends SupabaseTable<PerguntasRow> {
  @override
  String get tableName => 'perguntas';

  @override
  PerguntasRow createRow(Map<String, dynamic> data) => PerguntasRow(data);
}

class PerguntasRow extends SupabaseDataRow {
  PerguntasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PerguntasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get formacaoId => getField<String>('formacao_id');
  set formacaoId(String? value) => setField<String>('formacao_id', value);

  String? get pergunta => getField<String>('pergunta');
  set pergunta(String? value) => setField<String>('pergunta', value);

  dynamic get opcoes => getField<dynamic>('opcoes');
  set opcoes(dynamic value) => setField<dynamic>('opcoes', value);

  String? get respostaCorreta => getField<String>('resposta_correta');
  set respostaCorreta(String? value) =>
      setField<String>('resposta_correta', value);
}
