import '../database.dart';

class TiposDespesaTable extends SupabaseTable<TiposDespesaRow> {
  @override
  String get tableName => 'tipos_despesa';

  @override
  TiposDespesaRow createRow(Map<String, dynamic> data) => TiposDespesaRow(data);
}

class TiposDespesaRow extends SupabaseDataRow {
  TiposDespesaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TiposDespesaTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get tenantId => getField<String>('tenant_id');
  set tenantId(String? value) => setField<String>('tenant_id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  double get limiteValor => getField<double>('limite_valor')!;
  set limiteValor(double value) => setField<double>('limite_valor', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);
}
