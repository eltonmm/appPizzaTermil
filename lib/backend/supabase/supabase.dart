import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://nhqrypgeoarczkvuqmba.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5ocXJ5cGdlb2FyY3prdnVxbWJhIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjE4NzY0NDMsImV4cCI6MjAzNzQ1MjQ0M30.VUHrtAwifl3MG0yp-hLKsj1Qgds8b9PS0WumTuNdFXQ';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
