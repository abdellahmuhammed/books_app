// ignore_for_file: file_names

import 'package:dartz/dartz.dart';
import '../../../../Core/errors/failure.dart';
import '../home_data_model/book_model.dart';

/// Abstract repository interface for fetching book data.
abstract class HomeRepo {
 /// Fetches featured books.
 /// Returns either a [Failures] object or a list of [BookModel]s.
 Future<Either<Failures, List<BookModel>>> fetchFeatureBooks();

 /// Fetches newly released books.
 /// Returns either a [Failures] object or a list of [BookModel]s.
 Future<Either<Failures, List<BookModel>>> fetchNewsBooks();

 /// Fetches similar books based on a given category.
 /// Takes [categories] as a required parameter to filter similar books.
 /// Returns either a [Failures] object or a list of [BookModel]s.
 Future<Either<Failures, List<BookModel>>> fetchSimilarBooks({required String categories});
}
