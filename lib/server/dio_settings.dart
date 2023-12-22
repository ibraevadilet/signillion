import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:signillion/core/constants/app_text_constants.dart';
import 'package:signillion/core/constants/shared_keys.dart';

class DioSettings {
  DioSettings({required this.prefs}) {
    initialSettings();
  }
  final SharedPreferences prefs;

  Dio dio = Dio(
    BaseOptions(
      baseUrl: AppTextConstants.mainServer,
      responseType: ResponseType.json,
      contentType: "application/json; charset=utf-8",
      connectTimeout: const Duration(milliseconds: 2500),
      receiveTimeout: const Duration(milliseconds: 2500),
    ),
  );
  void initialSettings() {
    final interceptors = dio.interceptors;
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = prefs.getString(SharedKeys.token) ?? '';
          if (token != '') {
            options.headers['auth'] = token;
          }
          options.headers["langId"] = 2;

          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioError e, handler) {
          return handler.next(e);
        },
      ),
    );
    interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
      ),
    );
  }
}
