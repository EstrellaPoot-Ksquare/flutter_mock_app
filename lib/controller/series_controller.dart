import 'dart:convert';

import 'package:flutter_mock_app/models/series.dart';
import 'package:http/http.dart' as http;

class SeriesController {
  fetchSeries() async {
    String url = 'https://api.tvmaze.com/shows?page=1';
    Uri uri = Uri.parse(url);
    var response = await http.get(uri);
    var jsonResponse = jsonDecode(response.body);

    List<Series> series = [];
    series = jsonResponse.map<Series>((e) => Series.fromJson(e)).toList();
    return series;
  }
}
