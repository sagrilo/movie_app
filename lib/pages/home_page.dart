import 'package:flutter/material.dart';
import 'package:movie_app/controllers/movie_controller.dart';
import 'package:movie_app/models/movies_model.dart';
import 'package:movie_app/repositories/movies_repository_imp.dart';
import 'package:movie_app/services/dio_service_imp.dart';
import 'package:movie_app/utils/apis.utils.dart';
import 'package:movie_app/widget/custom_list_card_widget.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(28),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Text(
                'Movies',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              ValueListenableBuilder<MoviesModel?>(
                valueListenable: _controller.movies,
                builder: (_, movies, __) {
                  return _controller.movies != null
                      ? ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: movies!.movies.length,
                          itemBuilder: (_, idx) =>
                              CustomListCardWidget(movie: movies.movies[idx]),
                          separatorBuilder: (_, __) => Divider(),
                        )
                      : Container();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
