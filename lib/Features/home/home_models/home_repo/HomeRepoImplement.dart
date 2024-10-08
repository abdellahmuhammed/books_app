// ignore_for_file: file_names

import 'package:bookly_app/Core/errors/failure.dart';
import 'package:bookly_app/Core/utils/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../home_data_model/book_model.dart';
import 'HomeRepo.dart';

/// Implementation of the [HomeRepo] interface responsible for fetching book data.
class HomeRepoImplement implements HomeRepo {
  // Instance of [ApiServices] to handle network requests.
  final ApiServices _apiServices;

  /// Constructor that takes an instance of [ApiServices].
  HomeRepoImplement(this._apiServices);

  // API endpoint for fetching featured books (currently not implemented).
  final String _endPointFetchFeatureBooks =
      'volumes?Filtering=free-ebooks&q=Programming';

  // API endpoint for fetching news books.
  final String _endPointFetchNewsBooks =
      'volumes?Filtering=free-ebooks&Sorting=newestA&q=subject:Programming';

  final String _endPointFetchSimilarBooks =
      'volumes?Filtering=free-ebooks&sorting=relevance&q=General';

  //'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming'

  /// Method to fetch featured books (currently not implemented).
  @override
  Future<Either<Failures, List<BookModel>>> fetchFeatureBooks() async {
    try {
      // Fetching data from the API using the provided endpoint.
      var jsonData =
          await _apiServices.getData(endPoint: _endPointFetchFeatureBooks);

      // Extracting the list of items (books) from the JSON response.
      List<dynamic> jsonDataList = jsonData['items'];
      List<BookModel> booksList = [];

      // Parsing each item in the JSON list into a [BookModel] object.
      for (var item in jsonDataList) {
        booksList.add(BookModel.fromJson(item));
      }
      // Returning the list of books wrapped in a Right (success) value.
      return right(booksList);
    } catch (error) {
      // Handling Dio-specific errors (e.g., network issues).
      if (error is DioException) {
        return left(ServicesFailures.fromDioException(error));
      }
      // Handling general errors by returning the error message.
      return left(ServicesFailures(errorMessage: error.toString()));
    }
  }

  /// Fetches the latest news books from the API and converts the JSON response
  /// into a list of [BookModel] objects.
  ///
  /// Returns [Either] a [Failures] on error or a list of [BookModel] on success.
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewsBooks() async {
    try {
      // Fetching data from the API using the provided endpoint.
      var jsonData =
          await _apiServices.getData(endPoint: _endPointFetchNewsBooks);

      // Extracting the list of items (books) from the JSON response.
      List<dynamic> jsonDataList = jsonData['items'];
      List<BookModel> booksList = [];

      // Parsing each item in the JSON list into a [BookModel] object.
      for (var item in jsonDataList) {
        booksList.add(BookModel.fromJson(item));
      }
      // Returning the list of books wrapped in a Right (success) value.
      return right(booksList);
    } catch (error) {
      // Handling Dio-specific errors (e.g., network issues).
      if (error is DioException) {
        return left(ServicesFailures.fromDioException(error));
      }
      // Handling general errors by returning the error message.
      return left(ServicesFailures(errorMessage: error.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchSimilarBooks(
      {required String categories}) async {
    try {
      // Fetching data from the API using the provided endpoint.
      var jsonData =
          await _apiServices.getData(endPoint: _endPointFetchSimilarBooks);

      // Extracting the list of items (books) from the JSON response.
      List<dynamic> jsonDataList = jsonData['items'];
      List<BookModel> booksList = [];

      // Parsing each item in the JSON list into a [BookModel] object.
      for (var item in jsonDataList) {
        booksList.add(BookModel.fromJson(item));
      }
      // Returning the list of books wrapped in a Right (success) value.
      return right(booksList);
    } catch (error) {
      // Handling Dio-specific errors (e.g., network issues).
      if (error is DioException) {
        return left(ServicesFailures.fromDioException(error));
      }
      // Handling general errors by returning the error message.
      return left(ServicesFailures(errorMessage: error.toString()));
    }
  }
}
