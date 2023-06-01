import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  late String message;

  DioExceptions.fromDioError(DioError dioError, int whichCase) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        message = "Request to API server was cancelled";
        break;
      case DioErrorType.connectionTimeout:
        message = "Connection timeout with API server";
        break;
      case DioErrorType.receiveTimeout:
        message = "Receive timeout in connection with API server";
        break;
      case DioErrorType.badResponse:
        message = _handleError(
            dioError.response?.statusCode, dioError.response?.data, whichCase);
        break;
      case DioErrorType.sendTimeout:
        message = "Send timeout in connection with API server";
        break;
      case DioErrorType.unknown:
        if (dioError.message?.contains("SocketException") == true) {
          message = 'No Internet';
          break;
        } else if (dioError.message?.contains('HandshakeException') == true) {
          message = 'Response data not found';
          break;
        }
        message = "Unexpected error occurred";
        break;
      default:
        message = "Something went wrong";
        break;
    }
  }

  String _handleError(int? statusCode, dynamic error, int whichCase) {
    switch (statusCode) {
      case 400:
        return whichCase == 1
            ? error['error_description']
            : error['message'] ?? 'Bad request';
      case 401:
        return whichCase == 1
            ? error['error_description']
            : error['message'] ?? 'Unauthorized';
      case 403:
        return whichCase == 1
            ? error['error_description']
            : error['message'] ?? 'Forbidden';
      case 404:
        return whichCase == 1
            ? error['error_description']
            : error['message'];
      case 420:
        return 'Session Expired. Please LogIn again';
      case 500:
        return whichCase == 1
            ? error['error_description']
            : error['message'] ?? 'Internal server error';
      case 502:
        return whichCase == 1
            ? error['error_description']
            : error['message'] ?? 'Server unavailable';
      default:
        return 'Oops something went wrong';
    }
  }

  @override
  String toString() => message;
}
