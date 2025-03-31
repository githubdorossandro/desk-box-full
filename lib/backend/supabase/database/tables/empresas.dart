import '../database.dart';

class EmpresasTable extends SupabaseTable<EmpresasRow> {
  @override
  String get tableName => 'empresas';

  @override
  EmpresasRow createRow(Map<String, dynamic> data) => EmpresasRow(data);
}

class EmpresasRow extends SupabaseDataRow {
  EmpresasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EmpresasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get subdominio => getField<String>('subdominio');
  set subdominio(String? value) => setField<String>('subdominio', value);

  String? get logoUrl => getField<String>('logo_url');
  set logoUrl(String? value) => setField<String>('logo_url', value);

  String? get corPrimaria => getField<String>('cor_primaria');
  set corPrimaria(String? value) => setField<String>('cor_primaria', value);

  String? get corSecundaria => getField<String>('cor_secundaria');
  set corSecundaria(String? value) => setField<String>('cor_secundaria', value);

  String? get plano => getField<String>('plano');
  set plano(String? value) => setField<String>('plano', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  DateTime? get dataContratacao => getField<DateTime>('data_contratacao');
  set dataContratacao(DateTime? value) =>
      setField<DateTime>('data_contratacao', value);
}
