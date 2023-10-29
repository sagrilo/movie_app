class MoviesModel {


  MoviesModel({
    required this.averageRating,
    required this.backdropPath,
    required this.createdBy,
    required this.description,
    required this.id,
    required this.iso_3166_1,
    required this.iso_639_1,
    required this.name,
    required this.page,
    required this.posterPath,
    required this.public,
    required this.movies,
    required this.revenue,
    required this.runtime,
    required this.sortBy,
    required this.totalPages,
    required this.totalMovies,
  });
  late final double averageRating;
  late final String backdropPath;
  late final CreatedBy createdBy;
  late final String description;
  late final int id;
  late final String iso_3166_1;
  late final String iso_639_1;
  late final String name;
  late final int page;
  late final String posterPath;
  late final bool public;
  late final List<Movie> movies;
  late final int revenue;
  late final int runtime;
  late final String sortBy;
  late final int totalPages;
  late final int totalMovies;

  MoviesModel.fromJson(Map<String, dynamic> json){
    averageRating = json['average_rating'];
    backdropPath = json['backdrop_path'];
    createdBy = CreatedBy.fromJson(json['created_by']);
    description = json['description'];
    id = json['id'];
    iso_3166_1 = json['iso_3166_1'];
    iso_639_1 = json['iso_639_1'];
    name = json['name'];
    page = json['page'];
    posterPath = json['poster_path'];
    public = json['public'];
    movies = List.from(json['results']).map((e)=>Movie.fromJson(e)).toList();
    revenue = json['revenue'];
    runtime = json['runtime'];
    sortBy = json['sort_by'];
    totalPages = json['total_pages'];
    totalMovies = json['total_results'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['average_rating'] = averageRating;
    _data['backdrop_path'] = backdropPath;
    _data['created_by'] = createdBy.toJson();
    _data['description'] = description;
    _data['id'] = id;
    _data['iso_3166_1'] = iso_3166_1;
    _data['iso_639_1'] = iso_639_1;
    _data['name'] = name;
    _data['page'] = page;
    _data['poster_path'] = posterPath;
    _data['public'] = public;
    _data['results'] = movies.map((e)=>e.toJson()).toList();
    _data['revenue'] = revenue;
    _data['runtime'] = runtime;
    _data['sort_by'] = sortBy;
    _data['total_pages'] = totalPages;
    _data['total_results'] = totalMovies;
    return _data;
  }

  @override
  String toString() {
    return 'MoviesModel{averageRating: $averageRating, backdropPath: $backdropPath, createdBy: $createdBy, description: $description, id: $id, iso_3166_1: $iso_3166_1, iso_639_1: $iso_639_1, name: $name, page: $page, posterPath: $posterPath, public: $public, movies: $movies, revenue: $revenue, runtime: $runtime, sortBy: $sortBy, totalPages: $totalPages, totalMovies: $totalMovies}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MoviesModel &&
          runtimeType == other.runtimeType &&
          averageRating == other.averageRating &&
          backdropPath == other.backdropPath &&
          createdBy == other.createdBy &&
          description == other.description &&
          id == other.id &&
          iso_3166_1 == other.iso_3166_1 &&
          iso_639_1 == other.iso_639_1 &&
          name == other.name &&
          page == other.page &&
          posterPath == other.posterPath &&
          public == other.public &&
          movies == other.movies &&
          revenue == other.revenue &&
          runtime == other.runtime &&
          sortBy == other.sortBy &&
          totalPages == other.totalPages &&
          totalMovies == other.totalMovies;

  @override
  int get hashCode =>
      averageRating.hashCode ^
      backdropPath.hashCode ^
      createdBy.hashCode ^
      description.hashCode ^
      id.hashCode ^
      iso_3166_1.hashCode ^
      iso_639_1.hashCode ^
      name.hashCode ^
      page.hashCode ^
      posterPath.hashCode ^
      public.hashCode ^
      movies.hashCode ^
      revenue.hashCode ^
      runtime.hashCode ^
      sortBy.hashCode ^
      totalPages.hashCode ^
      totalMovies.hashCode;

  MoviesModel copyWith({
    double? averageRating,
    String? backdropPath,
    CreatedBy? createdBy,
    String? description,
    int? id,
    String? iso_3166_1,
    String? iso_639_1,
    String? name,
    int? page,
    String? posterPath,
    bool? public,
    List<Movie>? movies,
    int? revenue,
    int? runtime,
    String? sortBy,
    int? totalPages,
    int? totalMovies,
  }) {
    return MoviesModel(
      averageRating: averageRating ?? this.averageRating,
      backdropPath: backdropPath ?? this.backdropPath,
      createdBy: createdBy ?? this.createdBy,
      description: description ?? this.description,
      id: id ?? this.id,
      iso_3166_1: iso_3166_1 ?? this.iso_3166_1,
      iso_639_1: iso_639_1 ?? this.iso_639_1,
      name: name ?? this.name,
      page: page ?? this.page,
      posterPath: posterPath ?? this.posterPath,
      public: public ?? this.public,
      movies: movies ?? this.movies,
      revenue: revenue ?? this.revenue,
      runtime: runtime ?? this.runtime,
      sortBy: sortBy ?? this.sortBy,
      totalPages: totalPages ?? this.totalPages,
      totalMovies: totalMovies ?? this.totalMovies,
    );
  }
}

class CreatedBy {
  CreatedBy({
    required this.gravatarHash,
    required this.id,
    required this.name,
    required this.username,
  });
  late final String gravatarHash;
  late final String id;
  late final String name;
  late final String username;

  CreatedBy.fromJson(Map<String, dynamic> json){
    gravatarHash = json['gravatar_hash'];
    id = json['id'];
    name = json['name'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['gravatar_hash'] = gravatarHash;
    _data['id'] = id;
    _data['name'] = name;
    _data['username'] = username;
    return _data;
  }
}


class Movie {
  Movie({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.mediaType,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });
  late final bool adult;
  late final String backdropPath;
  late final List<int> genreIds;
  late final int id;
  late final String mediaType;
  late final String originalLanguage;
  late final String originalTitle;
  late final String overview;
  late final double popularity;
  late final String posterPath;
  late final String releaseDate;
  late final String title;
  late final bool video;
  late final double? voteAverage;
  late final int voteCount;

  Movie.fromJson(Map<String, dynamic> json){
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = List.castFrom<dynamic, int>(json['genre_ids']);
    id = json['id'];
    mediaType = json['media_type'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    voteAverage = json['vote_average'];
    voteCount = json['vote_count'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['adult'] = adult;
    _data['backdrop_path'] = backdropPath;
    _data['genre_ids'] = genreIds;
    _data['id'] = id;
    _data['media_type'] = mediaType;
    _data['original_language'] = originalLanguage;
    _data['original_title'] = originalTitle;
    _data['overview'] = overview;
    _data['popularity'] = popularity;
    _data['poster_path'] = posterPath;
    _data['release_date'] = releaseDate;
    _data['title'] = title;
    _data['video'] = video;
    _data['vote_average'] = voteAverage;
    _data['vote_count'] = voteCount;
    return _data;
  }

  @override
  String toString() {
    return 'Movie{adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, mediaType: $mediaType, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Movie &&
          runtimeType == other.runtimeType &&
          adult == other.adult &&
          backdropPath == other.backdropPath &&
          genreIds == other.genreIds &&
          id == other.id &&
          mediaType == other.mediaType &&
          originalLanguage == other.originalLanguage &&
          originalTitle == other.originalTitle &&
          overview == other.overview &&
          popularity == other.popularity &&
          posterPath == other.posterPath &&
          releaseDate == other.releaseDate &&
          title == other.title &&
          video == other.video &&
          voteAverage == other.voteAverage &&
          voteCount == other.voteCount;

  @override
  int get hashCode =>
      adult.hashCode ^
      backdropPath.hashCode ^
      genreIds.hashCode ^
      id.hashCode ^
      mediaType.hashCode ^
      originalLanguage.hashCode ^
      originalTitle.hashCode ^
      overview.hashCode ^
      popularity.hashCode ^
      posterPath.hashCode ^
      releaseDate.hashCode ^
      title.hashCode ^
      video.hashCode ^
      voteAverage.hashCode ^
      voteCount.hashCode;

  Movie copyWith({
    bool? adult,
    String? backdropPath,
    List<int>? genreIds,
    int? id,
    String? mediaType,
    String? originalLanguage,
    String? originalTitle,
    String? overview,
    double? popularity,
    String? posterPath,
    String? releaseDate,
    String? title,
    bool? video,
    double? voteAverage,
    int? voteCount,
  }) {
    return Movie(
      adult: adult ?? this.adult,
      backdropPath: backdropPath ?? this.backdropPath,
      genreIds: genreIds ?? this.genreIds,
      id: id ?? this.id,
      mediaType: mediaType ?? this.mediaType,
      originalLanguage: originalLanguage ?? this.originalLanguage,
      originalTitle: originalTitle ?? this.originalTitle,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
      title: title ?? this.title,
      video: video ?? this.video,
      voteAverage: voteAverage ?? this.voteAverage,
      voteCount: voteCount ?? this.voteCount,
    );
  }
}