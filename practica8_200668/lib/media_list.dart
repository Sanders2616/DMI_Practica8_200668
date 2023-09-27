import 'package:flutter/material.dart';
import 'package:practica8_200668/common/HttpHandler.dart';
import 'package:practica8_200668/model/Media.dart';

class MediaList extends StatefulWidget {
  @override
  _MediaListState createState() => new _MediaListState();
}

class _MediaListState extends State<MediaList> {
  List<Media> _media = new List.empty();
  @override
  void initState() {
    super.initState();
  }

  void loadMovies() async {
    var movies = await HttpHandler().fetchMovies();
    setState(() {
      movies.addAll(movies);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new ListView.builder(
        itemCount: _media.length,
        itemBuilder: (BuildContext context, init index) {
          return new Column(
            children: <Widget>[new Image.network(_media[index].getPosterUrl())],
          );
        },
      ),
    );
  }
}
