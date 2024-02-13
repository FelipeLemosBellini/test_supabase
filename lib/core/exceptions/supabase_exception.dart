class SupabaseException implements Exception {
  final String error;

  SupabaseException({required this.error}) : super();
}
