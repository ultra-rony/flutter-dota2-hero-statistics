import 'dart:io';
import 'package:dio/dio.dart';

import 'package:dota2_heroes/core/resources/date_state.dart';
import 'package:dota2_heroes/features/home/data/data_sources/remove/heroes_api_service.dart';
import 'package:dota2_heroes/features/home/data/models/hero_model.dart';
import 'package:dota2_heroes/features/home/domain/repository/heroes_repository.dart';

class HeroesRepositoryImpl extends HeroesRepository {
  final HeroesApiService _apiService;

  HeroesRepositoryImpl(this._apiService);

  @override
  Future<DataState<List<HeroModel>>> getRemoteHeroes() async {
    try {
      final httpResponse = await _apiService.getHeroes();

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        return DataFailed(DioException(
                error: httpResponse.response.statusMessage,
                response: httpResponse.response,
                requestOptions: httpResponse.response.requestOptions)
            .toString());
      }
    } on DioException catch (e) {
      return DataFailed(e.toString());
    }
  }
}
