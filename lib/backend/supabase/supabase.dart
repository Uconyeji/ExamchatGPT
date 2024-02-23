import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://eyiqrwkkfukycotptrfa.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImV5aXFyd2trZnVreWNvdHB0cmZhIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTYwMDYxMDgsImV4cCI6MjAxMTU4MjEwOH0.DbC8qrf9U6R16lQUhJpOWV_j9XTGaV1ubOXZUjp9_DE';

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
