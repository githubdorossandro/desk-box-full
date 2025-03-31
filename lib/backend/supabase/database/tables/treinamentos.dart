import '../database.dart';

class TreinamentosTable extends SupabaseTable<TreinamentosRow> {
  @override
  String get tableName => 'treinamentos';

  @override
  TreinamentosRow createRow(Map<String, dynamic> data) => TreinamentosRow(data);
}

class TreinamentosRow extends SupabaseDataRow {
  TreinamentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TreinamentosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get tenantId => getField<String>('tenant_id');
  set tenantId(String? value) => setField<String>('tenant_id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get videoUrl => getField<String>('video_url');
  set videoUrl(String? value) => setField<String>('video_url', value);

  int? get cargaHoraria => getField<int>('carga_horaria');
  set cargaHoraria(int? value) => setField<int>('carga_horaria', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
