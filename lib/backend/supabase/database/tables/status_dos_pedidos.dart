import '../database.dart';

class StatusDosPedidosTable extends SupabaseTable<StatusDosPedidosRow> {
  @override
  String get tableName => 'status dos pedidos';

  @override
  StatusDosPedidosRow createRow(Map<String, dynamic> data) =>
      StatusDosPedidosRow(data);
}

class StatusDosPedidosRow extends SupabaseDataRow {
  StatusDosPedidosRow(super.data);

  @override
  SupabaseTable get table => StatusDosPedidosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get precoTotal => getField<double>('preco_total');
  set precoTotal(double? value) => setField<double>('preco_total', value);

  String? get endrecoUser => getField<String>('endreco_user');
  set endrecoUser(String? value) => setField<String>('endreco_user', value);

  DateTime? get dataformate => getField<DateTime>('dataformate');
  set dataformate(DateTime? value) => setField<DateTime>('dataformate', value);
}
