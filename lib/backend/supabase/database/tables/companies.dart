import '../database.dart';

class CompaniesTable extends SupabaseTable<CompaniesRow> {
  @override
  String get tableName => 'companies';

  @override
  CompaniesRow createRow(Map<String, dynamic> data) => CompaniesRow(data);
}

class CompaniesRow extends SupabaseDataRow {
  CompaniesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CompaniesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get logoUrl => getField<String>('logo_url');
  set logoUrl(String? value) => setField<String>('logo_url', value);

  String? get planType => getField<String>('plan_type');
  set planType(String? value) => setField<String>('plan_type', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
