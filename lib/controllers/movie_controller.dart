import 'package:flutter/material.dart';
import 'package:movie_app/models/movies_model.dart';
import 'package:movie_app/repositories/movies_repository.dart';

class MovieController {

  final MoviesRepository _moviesRepository;
  MovieController(this._moviesRepository) {
    fetch();
  }

  ValueNotifier<MoviesModel?> movies = ValueNotifier<MoviesModel?>(null);

  fetch() async {
    movies.value = await _moviesRepository.getMovies();
  }
}