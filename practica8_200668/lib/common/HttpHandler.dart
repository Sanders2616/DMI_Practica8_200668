import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:practica8_200668/common/Constants.dart';
import 'package:practica8_200668/model/Media.dart';

class HttpHandler {
  final String _baseUrl = "api.themoviedb.org";
  final String _lenguaje = "es-MX";

  Future<dynamic> getJson(Uri uri) async {
    http.Response response = await http.get(uri);
    return json.decode(response.body).toString();
  }

  Future<Media> fetchMovies() {
    var uri = new Uri.https(_baseUrl, "3/movie/popular",
        {'api_key': API_KEY, 'page': "1", 'language': _lenguaje});

    return getJson(uri).then(((data) =>
        data['results'].map<Media>((item) => new Media(item)).toList()));
  }
}
