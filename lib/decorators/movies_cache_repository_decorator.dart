import 'dart:convert';

import 'package:movie_app/decorators/movies_repository_decorator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/movies_model.dart';

class MoviesCacheRepositoryDecorator extends MoviesRepositoryDecorator {
  MoviesCacheRepositoryDecorator(super.moviesRepository);

  @override
  Future<MoviesModel> getMovies() async {
    try {
      MoviesModel moviesModel = await super.getMovies();
      _saveInCache(moviesModel);
      return moviesModel;
    } catch(e){
      return await _getInCache();
    }
  }

  _saveInCache(MoviesModel moviesModel) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String jsonMovies = jsonEncode(moviesModel.toJson());
    prefs.setString('movies_cache', jsonMovies);
    print('salvou no cache os filmes:' + jsonMovies);
  }

  Future<MoviesModel> _getInCache() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var moviesJsonString = prefs.getString('movies_cache');
    var json = jsonDecode(moviesJsonString!);
    var movies =  MoviesModel.fromJson(json);
    print('recuperou do cache os filmes ' + movies.toString());
    return movies;
  }
}
