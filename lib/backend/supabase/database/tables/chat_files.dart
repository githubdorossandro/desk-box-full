import '../database.dart';

class ChatFilesTable extends SupabaseTable<ChatFilesRow> {
  @override
  String get tableName => 'chat_files';

  @override
  ChatFilesRow createRow(Map<String, dynamic> data) => ChatFilesRow(data);
}

class ChatFilesRow extends SupabaseDataRow {
  ChatFilesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ChatFilesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get messageId => getField<String>('message_id');
  set messageId(String? value) => setField<String>('message_id', value);

  String? get fileUrl => getField<String>('file_url');
  set fileUrl(String? value) => setField<String>('file_url', value);

  String? get fileType => getField<String>('file_type');
  set fileType(String? value) => setField<String>('file_type', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
