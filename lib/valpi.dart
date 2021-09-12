library valpi;

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'models/matchData.dart';
import 'models/content.dart';

class Valpi {
  final String apiKey;
  final String server;
  late String authority;
  late Map<String, String> headers;

  Valpi(this.apiKey, this.server) {
    authority = 'https://$server.api.riotgames.com';
    headers = {'X-Riot-Token': '$apiKey'};
  }

  Future<http.Response> getContentResponse() async {
    final _unencodedPath = '/val/content/v1/contents';
    final _uri = '$authority$_unencodedPath';
    var _response = await http.get(Uri.parse(_uri), headers: headers);
    return _response;
  }

  Future<Content?> getContent() async {
    var _response = await getContentResponse();
    if (_response.statusCode == 200) {
      return Content.fromJson(jsonDecode(_response.body));
    } else {
      print(_response.body);
    }
  }

  Future<http.Response> getMatchDataResponse(String matchId) async {
    final _unencodedPath = '/val/match/v1/matches/$matchId';
    final _uri = '$authority$_unencodedPath';
    var _response = await http.get(Uri.parse(_uri));
    return _response;
  }

  Future<MatchData> getMatchData(String matchId) async {
    var _response = await getMatchDataResponse(matchId);
    return MatchData.fromJson(jsonDecode(_response.body));
  }
}
