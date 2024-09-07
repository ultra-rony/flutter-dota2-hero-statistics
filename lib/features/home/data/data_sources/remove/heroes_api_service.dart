import 'package:dio/dio.dart';
import 'package:dota2_heroes/core/constants/constants.dart';
import 'package:dota2_heroes/features/home/data/models/hero_model.dart';
import 'package:retrofit/retrofit.dart';

part 'heroes_api_service.g.dart';

@RestApi(baseUrl: baseURL)
abstract class HeroesApiService {
  factory HeroesApiService(Dio dio) = _HeroesApiService;

  @GET('/api/heroStats')
  Future<HttpResponse<List<HeroModel>>> getHeroes();
}
