import 'package:dio/dio.dart';
import 'package:game_app/core/constant/string_constant.dart';
import 'package:game_app/product/model/games_model.dart';

class Service {
  // Bütün oyunları Listeleyen fonksiyon
  Future<List<GamesModel>?> fetchGames() async {
    final dio = Dio();
    final res = await dio.get(AppString.gameApi);

    if (res.statusCode == 200) {
      final jsonBody = res.data;
      if (jsonBody is List) {
        return jsonBody.map((e) => GamesModel.fromJson(e)).toList();
      }
    } else {
      Exception(AppString.apiEroor);
    }
    return null;
  }
}
