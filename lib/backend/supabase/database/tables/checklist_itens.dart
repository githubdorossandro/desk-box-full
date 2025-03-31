import '../database.dart';

class ChecklistItensTable extends SupabaseTable<ChecklistItensRow> {
  @override
  String get tableName => 'checklist_itens';

  @override
  ChecklistItensRow createRow(Map<String, dynamic> data) =>
      ChecklistItensRow(data);
}

class ChecklistItensRow extends SupabaseDataRow {
  ChecklistItensRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChecklistItensTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get checklistModeloId => getField<String>('checklist_modelo_id');
  set checklistModeloId(String? value) =>
      setField<String>('checklist_modelo_id', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get tipoResposta => getField<String>('tipo_resposta');
  set tipoResposta(String? value) => setField<String>('tipo_resposta', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);
}
