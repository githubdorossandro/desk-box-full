import '../database.dart';

class MetasTable extends SupabaseTable<MetasRow> {
  @override
  String get tableName => 'metas';

  @override
  MetasRow createRow(Map<String, dynamic> data) => MetasRow(data);
}

class MetasRow extends SupabaseDataRow {
  MetasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MetasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get tenantId => getField<String>('tenant_id');
  set tenantId(String? value) => setField<String>('tenant_id', value);

  String get nomeProduto => getField<String>('nome_produto')!;
  set nomeProduto(String value) => setField<String>('nome_produto', value);

  double get valorUnitario => getField<double>('valor_unitario')!;
  set valorUnitario(double value) => setField<double>('valor_unitario', value);

  int? get supermetaQuantidade => getField<int>('supermeta_quantidade');
  set supermetaQuantidade(int? value) =>
      setField<int>('supermeta_quantidade', value);

  double? get valorSupermeta => getField<double>('valor_supermeta');
  set valorSupermeta(double? value) =>
      setField<double>('valor_supermeta', value);

  int? get minimoParaPagar => getField<int>('minimo_para_pagar');
  set minimoParaPagar(int? value) => setField<int>('minimo_para_pagar', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
