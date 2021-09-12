class MatchList {
  late String puuid;
  late List<MatchlistEntryDto> history;
  MatchList(this.puuid, this.history);
  MatchList.fromJson(Map<String, dynamic> json) {
    puuid = json['puuid'] ?? '';
    history = <MatchlistEntryDto>[];
    json['history']!.forEach((v) {
      history.add(MatchlistEntryDto.fromJson(v));
    });
  }
}

class MatchlistEntryDto {
  late String matchId;
  late int gameStartTimeMillis;
  late String teamId;
  MatchlistEntryDto(this.matchId, this.gameStartTimeMillis, this.teamId);
  MatchlistEntryDto.fromJson(Map<String, dynamic> json) {
    matchId = json['matchId'] ?? '';
    gameStartTimeMillis = json['gameStartTimeMillis'] ?? 0;
    teamId = json['teamId'] ?? '';
  }
}
