import 'package:flutter/material.dart';
import 'page_detail.dart';
import 'package:testpageapp/blocs/movies_bloc.dart';
import 'bloc_provider.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MoviesBloc _moviesBloc = BlocProvider.of<MoviesBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Título de la app'),
      ),
      body: StreamBuilder(
        stream: _moviesBloc.outMovies,
        builder: (context, movies) {
          if(movies.hasData) {
            //final response = jsonDecode(snapshot.data.body);
            //final movieList = response["results"];
            List list = movies.data.map<Widget>( (e) => Card( elevation: 4,child: 
              ListTile(
                onTap: () =>
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PageDetail(),
                  )),
                leading: Icon(Icons.supervised_user_circle),
                title: Text(e.title)))).toList();
            return ListView(
              children: list,
            );
          }
          return SizedBox();
        }) ,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, '/detail');

      }),
    );
  }
}




// FutureBuilder(
//             future: get("https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key=fa3e844ce31744388e07fa47c7c5d8c3"),
//             builder: (context, snapshot) {
//             final response = jsonDecode(snapshot.data.body);
//             final movieList = response["results"];
//             List list = movieList.map<Widget>( (e) => Card( elevation: 4,child: ListTile(
//             leading: Icon(Icons.supervised_user_circle),
//             title: Text(e["original_title"])))).toList();
//             return ListView(
//               children: _moviesBloc.getMovies(),
//             );
//             },
//             )