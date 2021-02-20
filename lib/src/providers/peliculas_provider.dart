import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:peliculas_app/src/model/pelicula_model.dart';

class PeliculasProvider{
  String _apiKey   = '8bd9109224090051e93aced5d5a3c3d5';
  String _url      = 'api.themoviedb.org';
  String _language = 'es_ES';
  
  Future<List<Pelicula>>getEnCines() async{
    
    final url = Uri.https(_url, '3/movie/now_playing',{
      'api_key': _apiKey,
      'language': _language
    });
    final resp  = await http.get(url);
    final decodeData = json.decode(resp.body);
    final peliculas = new Peliculas.fromJsonList(decodeData['results']);

    return peliculas.items;
  }
}