import '../database.dart';

class ChecklistModelosTable extends SupabaseTable<ChecklistModelosRow> {
  @override
  String get tableName => 'checklist_modelos';

  @override
  ChecklistModelosRow createRow(Map<String, dynamic> data) =>
      ChecklistModelosRow(data);
}

class ChecklistModelosRow extends SupabaseDataRow {
  ChecklistModelosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChecklistModelosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get frequencia => getField<String>('frequencia');
  set frequencia(String? value) => setField<String>('frequencia', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);
}
