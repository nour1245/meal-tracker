import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static Dio? dio;

  static Future<Dio> getDio() async {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioInterceptors();
      addOptions(dio!);
      return dio!;
    } else {
      return dio!;
    }
  }


static void addOptions(Dio dio) {
    dio.options.headers['Content-Type'] = 'application/json';
  }
  static void addDioInterceptors() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        responseHeader: true,
        requestBody: true,
      ),
    );
  }
}
