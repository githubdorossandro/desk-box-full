import '../database.dart';

class AulasTable extends SupabaseTable<AulasRow> {
  @override
  String get tableName => 'aulas';

  @override
  AulasRow createRow(Map<String, dynamic> data) => AulasRow(data);
}

class AulasRow extends SupabaseDataRow {
  AulasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AulasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get formacaoId => getField<String>('formacao_id');
  set formacaoId(String? value) => setField<String>('formacao_id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get videoUrl => getField<String>('video_url');
  set videoUrl(String? value) => setField<String>('video_url', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);
}
