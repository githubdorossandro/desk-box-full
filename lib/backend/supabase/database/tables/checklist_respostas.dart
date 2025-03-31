import '../database.dart';

class ChecklistRespostasTable extends SupabaseTable<ChecklistRespostasRow> {
  @override
  String get tableName => 'checklist_respostas';

  @override
  ChecklistRespostasRow createRow(Map<String, dynamic> data) =>
      ChecklistRespostasRow(data);
}

class ChecklistRespostasRow extends SupabaseDataRow {
  ChecklistRespostasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChecklistRespostasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get checklistId => getField<String>('checklist_id');
  set checklistId(String? value) => setField<String>('checklist_id', value);

  String? get checklistItemId => getField<String>('checklist_item_id');
  set checklistItemId(String? value) =>
      setField<String>('checklist_item_id', value);

  String? get respostaTexto => getField<String>('resposta_texto');
  set respostaTexto(String? value) => setField<String>('resposta_texto', value);

  bool? get respostaBool => getField<bool>('resposta_bool');
  set respostaBool(bool? value) => setField<bool>('resposta_bool', value);

  String? get respostaFotoUrl => getField<String>('resposta_foto_url');
  set respostaFotoUrl(String? value) =>
      setField<String>('resposta_foto_url', value);
}
