import 'package:dio/dio.dart';

/// Abstract class representing a generic failure with a message.
abstract class Failures {
 final String errorMessage;

 /// Constructor to initialize the failure with an error message.
 const Failures({required this.errorMessage});
}

/// Specific class for handling failures related to services/API calls.
class ServicesFailures extends Failures {
 /// Constructor to initialize the failure with an error message.
 ServicesFailures({required super.errorMessage});

 /// Factory method to create a [ServicesFailures] from a [DioException].
 /// This method maps different types of Dio exceptions to meaningful error messages.
 factory ServicesFailures.fromDioException(DioException dioException) {
  switch (dioException.type) {
   case DioExceptionType.connectionTimeout:
    return ServicesFailures(
        errorMessage: 'Connection Timeout with API Services');

   case DioExceptionType.sendTimeout:
    return ServicesFailures(
        errorMessage: 'Send Timeout with API Services');

   case DioExceptionType.receiveTimeout:
    return ServicesFailures(
        errorMessage: 'Receive Timeout with API Services');

   case DioExceptionType.badCertificate:
    return ServicesFailures(
        errorMessage: 'Bad Certificate from API Services');

   case DioExceptionType.badResponse:
   // Handling the response when the server returns a bad response.
    return ServicesFailures.fromResponse(
     statusCode: dioException.response?.statusCode ?? 0,
     response: dioException.response?.data,
    );

   case DioExceptionType.cancel:
    return ServicesFailures(
        errorMessage: 'Request to the API was cancelled.');

   case DioExceptionType.connectionError:
    return ServicesFailures(
        errorMessage: 'Connection error occurred with API ,pleas check internet connection.');

   case DioExceptionType.unknown:
    return ServicesFailures(
        errorMessage: 'Unknown error occurred with API services.');

   default:
    return ServicesFailures(
        errorMessage: 'Oops! There was an error, please try again.');
  }
 }

 /// Factory method to create a [ServicesFailures] based on an HTTP response status code.
 /// This method handles specific status codes and returns meaningful error messages.
 factory ServicesFailures.fromResponse({
  required int statusCode,
  required dynamic response,
 }) {
  switch (statusCode) {
   case 400:
    return ServicesFailures(
        errorMessage: response['error']['message'] ??
            'Bad Request: The server could not understand the request.');

   case 401:
    return ServicesFailures(
        errorMessage: response['error']['message'] ??
            'Unauthorized: Access is denied due to invalid credentials.');

   case 403:
    return ServicesFailures(
        errorMessage: response['error']['message'] ??
            'Forbidden: You do not have permission to access this resource.');

   case 404:
    return ServicesFailures(
        errorMessage: 'Not Found: The requested resource could not be found.');

   case 405:
    return ServicesFailures(
        errorMessage: 'Method Not Allowed: The requested method is not supported for the resource.');

   case 408:
    return ServicesFailures(
        errorMessage: 'Request Timeout: The server timed out waiting for the request.');

   case 409:
    return ServicesFailures(
        errorMessage: 'Conflict: The request could not be processed due to a conflict.');

   case 410:
    return ServicesFailures(
        errorMessage: 'Gone: The requested resource is no longer available.');

   case 500:
    return ServicesFailures(
        errorMessage: 'Internal Server Error: The server encountered an unexpected condition.');

   case 502:
    return ServicesFailures(
        errorMessage: 'Bad Gateway: The server received an invalid response from the upstream server.');

   case 503:
    return ServicesFailures(
        errorMessage: 'Service Unavailable: The server is temporarily unavailable, please try again later.');

   default:
    return ServicesFailures(
        errorMessage: 'Oops! There was an error, please try again later.');
  }
 }
}
