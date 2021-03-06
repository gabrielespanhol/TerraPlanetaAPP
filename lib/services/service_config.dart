import 'package:dio/dio.dart';

class ServiceConfig {
  String _url = "";
  int timeout = 5000;

  ServiceConfig(this._url, {this.timeout = 50000});

  Dio create() {
    Dio dio = Dio(
      BaseOptions(
        connectTimeout: timeout,
        baseUrl: _url,
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions request) async {
          //request.headers["token"] = "sa09f0dfkjfkashd";
          return request;
        },
        onResponse: (Response response) async {
          // response = decript(response);
          return response;
        },
        onError: (DioError error) async {
          return error;
        },
      ),
    );

    return dio;
  }
}