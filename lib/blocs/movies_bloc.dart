import 'dart:async';
import 'package:testpageapp/bloc_provider.dart';
import '../model/movie.dart';
class MoviesBloc implements BlocBase {

  List<Movie> _list;

  StreamController<List<Movie>> _listController = StreamController<List<Movie>>();
  Sink<List<Movie>> get _inMovies => _listController.sink;
  Stream<List<Movie>> get outMovies => _listController.stream;

  MoviesBloc() {
    getMovies();
  }

  void getMovies() {
    _list = [Movie( title: "MOVIE1"), Movie( title: "Movie2")];
    _inMovies.add(_list);
  }

  @override
  void dispose() {
    _listController.close();
  }
}