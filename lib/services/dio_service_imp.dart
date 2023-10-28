import 'package:dio/dio.dart';
import 'package:dio/src/dio.dart';
import 'package:movie_app/services/dio_service.dart';

class DioServiceImp implements DioService {
  @override
  Dio getDio() {
    return Dio(
      BaseOptions (
        baseUrl: 'https://api.themoviedb.org/4/',
        headers: {
          'content-type': 'application/json;charser=utf-8',
          'authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjNDk2ZTUzNjIyNTU2MzhiMTk4NWQzZDkxOTBmZTM5OCIsInN1YiI6IjY1M2QzYzlkZTg5NGE2MDBmZjE2YjIyMSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.1NttCRJhfGn04vhxHnqFWWsbncN65pC7gsWu7El5lTk'
        },
      ),
    );
  }


}