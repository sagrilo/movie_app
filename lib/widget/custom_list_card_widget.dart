import 'package:flutter/material.dart';
import 'package:movie_app/models/movies_model.dart';

import '../utils/apis.utils.dart';

class CustomListCardWidget extends StatelessWidget {
  final Movie movie;

  const CustomListCardWidget({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.black54,
      ),
      child: Row(
        children: [
          Image.network(
            API.REQUEST_IMG(movie.posterPath),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
                Spacer(),
                Text('Polulariade: ${movie.popularity}'),
                const SizedBox(height: 15,),
                Text('Votos: ${movie.voteAverage}'),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
