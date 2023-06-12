import 'package:dio/dio.dart';
import 'exception.dart';

class AppInterceptors extends Interceptor {
  final Dio dio;

  AppInterceptors(this.dio);

  Future<Response<dynamic>> _retry(
      RequestOptions requestOptions, Dio dio) async {
    return await dio
        .fetch<Map<String, dynamic>>(requestOptions)
        .onError((error, stackTrace) {
      print('on AppInterceptors _retry  ${error.toString()}');

      throw Exception();
    });
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // print(options.contentType.toString());
    // print(options.data.toString());
    // print(options.path);

    return handler.next(options);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print(
        'onError ==== ${err.error}   ||||  ${err.response?.data} |||| on Request: ${err.requestOptions.path}, request headers: ${err.requestOptions.headers}, body:${err.requestOptions.data}');
    print(
        'onError ==== ${err.error}   ||||  ${err.response?.data} |||| on Request: ${err.requestOptions.path}, request headers: ${err.requestOptions.headers}, body:${err.requestOptions.data}');

    switch (err.type) {
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        throw DeadlineExceededException(err.requestOptions);
      case DioErrorType.connectionTimeout:
        throw DeadlineExceededException(err.requestOptions);
      case DioErrorType.badCertificate:
        throw DeadlineExceededException(err.requestOptions);
      case DioErrorType.connectionError:
        throw NoInternetConnectionException(err.requestOptions);
      case DioErrorType.badResponse:
        switch (err.response?.statusCode) {
          case 400:
            if (err.response?.data != null) {
              if (err.response?.data["email"] != null &&
                  err.response?.data["email"][0] ==
                      'A user is already registered with this e-mail address.') {
                throw UserAlerdySignUpException(err.requestOptions);
              }

              if (err.response?.data["password1"] != null &&
                  err.response?.data["password1"][0] ==
                      'This password is entirely numeric.') {
                throw OnlyNumbersException(err.requestOptions);
              }
              if (err.response?.data["password1"] != null &&
                  err.response?.data["password1"][0] ==
                      'This password is too common.') {
                throw PasswordIsTooCommonException(err.requestOptions);
              }

              if (err.response?.data["detail"] != null &&
                  err.response?.data["detail"] ==
                      'User is not subscribed to any tracks') {
                throw NotFoundException(err.requestOptions);
              }
            }
            {}
            throw BadRequestException(err.requestOptions);
          case 401:
            if (err.response?.data['detail'] ==
                'Authentication credentials were not provided.') {}

            throw UnauthorizedException(err.requestOptions);
          case 404:
            throw NotFoundException(err.requestOptions);
          case 409:
            throw ConflictException(err.requestOptions);
          case 500:
            throw InternalServerErrorException(err.requestOptions);
        }
        break;
      case DioErrorType.cancel:
        break;
      case DioErrorType.unknown:
        throw NoInternetConnectionException(err.requestOptions);
    }

    return handler.next(err);
  }
}
