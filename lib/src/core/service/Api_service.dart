import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_exam_4_serious/src/features/home/models/Home_model.dart';
import 'package:intl/intl.dart';

class ApiService {
  static final Dio dio = Dio();
  static final String AppleUrl =
      'https://newsapi.org/v2/everything?q=apple&from=${DateFormat('yyyy-dd-MM').format(DateTime.now())}to=${DateFormat('yyyy-dd-MM').format(DateTime.now())}&sortBy=popularity&apiKey=$key';
  static final String TeslaUrl =
      'https://newsapi.org/v2/everything?q=tesla&from=2026-04-28&to=2026-04-28&sortBy=popularity&apiKey=$key';
  static final String TopbUrl =
      'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=$key';
  static final String TophUrl =
      'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=$key';
  static final String WallUrl =
      'https://newsapi.org/v2/everything?domains=wsj.com&apiKey=$key';
  static final String key = '2dd97f7e6492403a9817334dab380425';

  static Future<NewsModel> getTeslaNews() async {
    try {
      final response = await dio.get(TeslaUrl);
      if (response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 300) {
        return NewsModel.fromJson(response.data);
      } else {
        throw DioException(requestOptions: response.requestOptions);
      }
    } on DioException catch (e) {
      throw DioException(requestOptions: e.requestOptions);
    } on SocketException catch (_) {
      throw SocketException('Failed to connect to the server');
    } on TimeoutException catch (_) {
      throw TimeoutException('Request timed out or connection lost');
    } on FormatException catch (_) {
      throw FormatException('Invalid JSON format please try again later');
    } catch (e) {
      throw Exception('An unknown error occurred');
    }
  }

  static Future<NewsModel> getApplenews() async {
    try {
      final response = await dio.get(AppleUrl);
      if (response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 300) {
        return NewsModel.fromJson(response.data);
      } else {
        throw DioException(requestOptions: response.requestOptions);
      }
    } on DioException catch (e) {
      throw DioException(requestOptions: e.requestOptions);
    } on SocketException catch (_) {
      throw SocketException('Failed to connect to the server');
    } on TimeoutException catch (_) {
      throw TimeoutException('Request timed out or connection lost');
    } on FormatException catch (_) {
      throw FormatException('Invalid JSON format please try again later');
    } catch (e) {
      throw Exception('An unknown error occurred');
    }
  }

  static Future<NewsModel> getTopbuisnes() async {
    try {
      final response = await dio.get(TopbUrl);
      if (response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 300) {
        return NewsModel.fromJson(response.data);
      } else {
        throw DioException(requestOptions: response.requestOptions);
      }
    } on DioException catch (e) {
      throw DioException(requestOptions: e.requestOptions);
    } on SocketException catch (_) {
      throw SocketException('Failed to connect to the server');
    } on TimeoutException catch (_) {
      throw TimeoutException('Request timed out or connection lost');
    } on FormatException catch (_) {
      throw FormatException('Invalid JSON format please try again later');
    } catch (e) {
      throw Exception('An unknown error occurred');
    }
  }

  static Future<NewsModel> getToph() async {
    try {
      final response = await dio.get(TophUrl);
      if (response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 300) {
        return NewsModel.fromJson(response.data);
      } else {
        throw DioException(requestOptions: response.requestOptions);
      }
    } on DioException catch (e) {
      throw DioException(requestOptions: e.requestOptions);
    } on SocketException catch (_) {
      throw SocketException('Failed to connect to the server');
    } on TimeoutException catch (_) {
      throw TimeoutException('Request timed out or connection lost');
    } on FormatException catch (_) {
      throw FormatException('Invalid JSON format please try again later');
    } catch (e) {
      throw Exception('An unknown error occurred');
    }
  }

  static Future<NewsModel> getWallnews() async {
    try {
      final response = await dio.get(WallUrl);
      if (response.statusCode != null &&
          response.statusCode! >= 200 &&
          response.statusCode! < 300) {
        return NewsModel.fromJson(response.data);
      } else {
        throw DioException(requestOptions: response.requestOptions);
      }
    } on DioException catch (e) {
      throw DioException(requestOptions: e.requestOptions);
    } on SocketException catch (_) {
      throw SocketException('Failed to connect to the server');
    } on TimeoutException catch (_) {
      throw TimeoutException('Request timed out or connection lost');
    } on FormatException catch (_) {
      throw FormatException('Invalid JSON format please try again later');
    } catch (e) {
      throw Exception('An unknown error occurred');
    }
  }
}
