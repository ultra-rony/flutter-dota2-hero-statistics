import 'dart:io';
import 'package:dio/dio.dart';

import 'package:dota2_heroes/core/resources/date_state.dart';
import 'package:dota2_heroes/features/home/data/data_sources/local/heroes_local_data_source.dart';
import 'package:dota2_heroes/features/home/data/data_sources/remote/heroes_api_service.dart';
import 'package:dota2_heroes/features/home/data/models/hero_model.dart';
import 'package:dota2_heroes/features/home/domain/repository/heroes_repository.dart';
import 'package:logger/logger.dart';

class HeroesRepositoryImpl extends HeroesRepository {
  final HeroesApiService _apiService;
  final Logger _logger;
  final HeroesLocalDataSource _heroesLocalDataSource;

  HeroesRepositoryImpl(
      this._apiService, this._logger, this._heroesLocalDataSource);

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
      _logger.e("error_log_DioException", error: e);
      return DataFailed(e.toString());
    }
  }

  @override
  Future<void> addAllLocalHeroesBox(List<HeroModel> heroes) async {
    _heroesLocalDataSource.addAllHeroes(heroes);
  }

  @override
  Future<void> clearLocalHeroesBox() async {
    _heroesLocalDataSource.clear();
  }

  @override
  Future<HeroModel?> getLocalHero(int index) async {
    return _heroesLocalDataSource.getHero(index);
  }

  @override
  Future<List<HeroModel>> getLocalHeroes() async {
    return _heroesLocalDataSource.getHeroes();
  }
}
