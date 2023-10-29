import 'package:flutter/material.dart';
import 'package:movie_app/models/movies_model.dart';
import 'package:movie_app/repositories/movies_repository.dart';

class MovieController {

  final MoviesRepository _moviesRepository;
  MovieController(this._moviesRepository) {
    fetch();
  }

  ValueNotifier<MoviesModel?> movies = ValueNotifier<MoviesModel?>(null);
  MoviesModel? _cachedMovies;

  onChanged(String value) {
    List<Movie> list = _cachedMovies!.movies.where((e) => e.toString().toLowerCase().contains(value.toLowerCase())).toList();
    movies.value = movies.value!.copyWith(movies: list);
  }

  fetch() async {
    movies.value = await _moviesRepository.getMovies();
    _cachedMovies = movies.value;
  }
}