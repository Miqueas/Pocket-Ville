import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_client.g.dart';

@riverpod
Dio dio(Ref ref) {
  const dioBaseUrl = 'https://pokeapi.co/api/v2/';

  final dioOptions = BaseOptions(
    baseUrl: dioBaseUrl,
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  );

  final dio = Dio(dioOptions);

  dio.interceptors.add(
    LogInterceptor(
      responseBody: true,
      logPrint: (object) => debugPrint(object.toString()),
    ),
  );

  return dio;
}