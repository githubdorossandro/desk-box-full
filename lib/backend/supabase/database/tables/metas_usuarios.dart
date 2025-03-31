import '../database.dart';

class MetasUsuariosTable extends SupabaseTable<MetasUsuariosRow> {
  @override
  String get tableName => 'metas_usuarios';

  @override
  MetasUsuariosRow createRow(Map<String, dynamic> data) =>
      MetasUsuariosRow(data);
}

class MetasUsuariosRow extends SupabaseDataRow {
  MetasUsuariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MetasUsuariosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get metaId => getField<String>('meta_id');
  set metaId(String? value) => setField<String>('meta_id', value);

  String? get usuarioId => getField<String>('usuario_id');
  set usuarioId(String? value) => setField<String>('usuario_id', value);

  int? get quantidadeVendida => getField<int>('quantidade_vendida');
  set quantidadeVendida(int? value) =>
      setField<int>('quantidade_vendida', value);

  double? get valorTotal => getField<double>('valor_total');
  set valorTotal(double? value) => setField<double>('valor_total', value);

  bool? get atingiuSupermeta => getField<bool>('atingiu_supermeta');
  set atingiuSupermeta(bool? value) =>
      setField<bool>('atingiu_supermeta', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
