library valpi;

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:valpi/models/leaderboard.dart';
import 'package:valpi/models/matchList.dart';
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
    var _response = await http.get(Uri.parse(_uri), headers: headers);
    return _response;
  }

  Future<RecentMatches?> getMatchData(String matchId) async {
    var _response = await getMatchDataResponse(matchId);
    if (_response.statusCode == 200) {
      return RecentMatches.fromJson(jsonDecode(_response.body));
    } else {
      print(_response.body);
    }
  }

  Future<http.Response> getMatchlistResponse(String puuid) async {
    final _unencodedPath = '/val/match/v1/matchlists/by-puuid/$puuid';
    final _uri = '$authority$_unencodedPath';
    var _response = await http.get(Uri.parse(_uri), headers: headers);
    return _response;
  }

  Future<MatchList?> getMatchlist(String puuid) async {
    var _response = await getMatchlistResponse(puuid);
    if (_response.statusCode == 200) {
      return MatchList.fromJson(jsonDecode(_response.body));
    } else {
      print(_response.body);
    }
  }

  Future<http.Response> getRecentMatchesResponse(String queue) async {
    final _unencodedPath = '/val/match/v1/recent-matches/by-queue/$queue';
    final _uri = '$authority$_unencodedPath';
    var _response = await http.get(Uri.parse(_uri), headers: headers);
    return _response;
  }

  Future<RecentMatches?> getRecentMatches(String queue) async {
    var _response = await getRecentMatchesResponse(queue);
    if (_response.statusCode == 200) {
      return RecentMatches.fromJson(jsonDecode(_response.body));
    } else {
      print(_response.body);
    }
  }

  Future<http.Response> getLeaderboardDataResponse(String actid) async {
    final _unencodedPath = '/val/ranked/v1/leaderboards/by-act/$actid';
    final _uri = '$authority$_unencodedPath';
    var _response = await http.get(Uri.parse(_uri), headers: headers);
    return _response;
  }

  Future<Leaderboard?> getLeaderboardData(String actid) async {
    var _response = await getLeaderboardDataResponse(actid);
    if (_response.statusCode == 200) {
      return Leaderboard.fromJson(jsonDecode(_response.body));
    } else {
      print(_response.body);
    }
  }

  Future<http.Response> getPlatformDataResponse() async {
    final _unencodedPath = '/val/status/v1/platform-data';
    final _uri = '$authority$_unencodedPath';
    var _response = await http.get(Uri.parse(_uri), headers: headers);
    return _response;
  }

  Future<Leaderboard?> getPlatformData() async {
    var _response = await getPlatformDataResponse();
    if (_response.statusCode == 200) {
      return Leaderboard.fromJson(jsonDecode(_response.body));
    } else {
      print(_response.body);
    }
  }
}
