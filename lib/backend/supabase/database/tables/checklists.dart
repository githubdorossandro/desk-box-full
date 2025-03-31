import '../database.dart';

class ChecklistsTable extends SupabaseTable<ChecklistsRow> {
  @override
  String get tableName => 'checklists';

  @override
  ChecklistsRow createRow(Map<String, dynamic> data) => ChecklistsRow(data);
}

class ChecklistsRow extends SupabaseDataRow {
  ChecklistsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChecklistsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get checklistModeloId => getField<String>('checklist_modelo_id');
  set checklistModeloId(String? value) =>
      setField<String>('checklist_modelo_id', value);

  String? get filialId => getField<String>('filial_id');
  set filialId(String? value) => setField<String>('filial_id', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  DateTime? get finalizadoEm => getField<DateTime>('finalizado_em');
  set finalizadoEm(DateTime? value) =>
      setField<DateTime>('finalizado_em', value);
}
