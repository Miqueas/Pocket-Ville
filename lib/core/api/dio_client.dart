import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:http_cache_hive_store/http_cache_hive_store.dart';
import 'package:native_dio_adapter/native_dio_adapter.dart';
import 'package:path_provider/path_provider.dart';

Future<Dio> newDioClient(String baseUrl) async {
  final tempDir = await getTemporaryDirectory();
  final cacheStore = HiveCacheStore(tempDir.path);
  final cacheOptions = CacheOptions(
    store: cacheStore,
    policy: .forceCache,
    maxStale: const Duration(days: 7),
  );

  final dioOptions = BaseOptions(
    baseUrl: baseUrl,
    headers: {
      'Accept': 'application/json',
      'Accept-Encoding': 'gzip, deflate',
    },
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  );

  final dio = Dio(dioOptions);
  dio.httpClientAdapter = NativeAdapter();
  dio.interceptors.add(DioCacheInterceptor(options: cacheOptions));

  // Prevents logging data on production builds, but allows it during
  // development for debugging purposes
  if (kDebugMode) dio.interceptors.add(LogInterceptor(responseBody: true));

  return dio;
}