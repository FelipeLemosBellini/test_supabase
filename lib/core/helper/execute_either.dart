import 'package:either_dart/either.dart';
import 'package:test_supabase/core/exceptions/supabase_exception.dart';

Future<Either<SupabaseException, T>> executeEither<T>(Function() func) async {
  try {
    return Right(await func.call());
  } on Exception catch (e) {
    return Left(SupabaseException(error: e.toString()));
  }
}
