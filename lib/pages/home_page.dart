import 'package:flutter/material.dart';
import 'package:movie_app/controllers/movie_controller.dart';
import 'package:movie_app/models/movies_model.dart';
import 'package:movie_app/repositories/movies_repository_imp.dart';
import 'package:movie_app/services/dio_service_imp.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MovieController _controller = MovieController(
    MoviesRepositoryImp(
      DioServiceImp(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder<MoviesModel?>(
            valueListenable: _controller.movies,
            builder: (_, movies, __) {
              return _controller.movies != null
                  ? ListView.builder(
                      itemCount: movies?.movies.length,
                      itemBuilder: (_, idx) =>
                          Text(movies != null ? movies.movies[idx].title : ""),
                    )
                  : Container();
            }));
  }
}
