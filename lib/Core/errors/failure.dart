import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure({required this.errorMessage});
}

class ServicesFailure extends Failure {
  ServicesFailure({required super.errorMessage});

  factory ServicesFailure.fromDioError(DioExceptionType dioException) {
    switch (dioException) {
      case DioExceptionType.connectionTimeout:
        return ServicesFailure(
            errorMessage: 'connection Timeout With Api Services');
      case DioExceptionType.sendTimeout:
        return ServicesFailure(errorMessage: 'send Timeout With Api Services');
      case DioExceptionType.receiveTimeout:
        return ServicesFailure(
            errorMessage: 'receive Timeout With Api Services');
      case DioExceptionType.badCertificate:
       return ServicesFailure(
           errorMessage: 'bad Certificate With Api Services');
      case DioExceptionType.badResponse:
      ServicesFailure.fromResponse(
          dddd., dioException
      );
      case DioExceptionType.cancel:
       return ServicesFailure(
           errorMessage: 'Request to Api Services was canceled');
      case DioExceptionType.connectionError:
       return ServicesFailure(
           errorMessage: 'connection Error please check your connection ');
       case DioExceptionType.unknown:
        return ServicesFailure(
            errorMessage: 'unexpected error try again');
    default:   return ServicesFailure(
        errorMessage: 'oops There was an error pleas try again');
    }

   }

  factory ServicesFailure.fromResponse(int statesCode, dynamic response) {
    if (statesCode == 400 || statesCode == 401 || statesCode == 403) {
      return ServicesFailure(errorMessage: response['error']['message']);
    } else if (statesCode == 404) {
      return ServicesFailure(
          errorMessage: 'Your request not found, please try later');
    } else if (statesCode == 500) {
      return ServicesFailure(
          errorMessage: 'Internal server error,please try later ');
    } else {
      return ServicesFailure(
          errorMessage: 'oops There was an error pleas try later');
    }
  }
}
