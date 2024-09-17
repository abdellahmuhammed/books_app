import 'package:dio/dio.dart';

class ApiServices {

  // Base URL for Google Books API
  final String _baseUrl = 'https://www.googleapis.com/books/v1';

  // Instance of Dio, a HTTP client for making requests
  final Dio dio;

  // Constructor to initialize Dio instance
  ApiServices(this.dio);

  /// This method fetches data from the Google Books API
  ///
  /// - [endPoint]: The specific API endpoint to retrieve data from (e.g., 'volumes?q=searchTerm').
  ///
  /// Returns a Future that resolves to a Map<String, dynamic> containing the API response data.
  ///
  /// Throws an exception if the HTTP request fails or an error occurs during the request.
  ///

  Future<Map<String, dynamic>> getData({required String endPoint}) async {
    // Make a GET request to the specified endpoint and await the response
    var response = await dio.get('$_baseUrl/$endPoint');

    // Return the response data as a Map
    return response.data;
  }
}
