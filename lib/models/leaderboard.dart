class Leaderboard {
  late String shard;
  late String actId;
  late int totalPlayers;
  Leaderboard(this.shard, this.actId, this.totalPlayers);
  Leaderboard.fromJson(Map<String, dynamic> json) {
    shard = json['shard'] ?? '';
    actId = json['actId'] ?? '';
    totalPlayers = json['totalPlayers'] ?? 0;
  }
}

class PlayerDto {
  late String puuid;
  late String gameName;
  late String tagLine;
  late int leaderboardRank;
  late int rankedRating;
  late int numberOfWins;
  PlayerDto(this.puuid, this.gameName, this.tagLine, this.leaderboardRank,
      this.rankedRating, this.numberOfWins);
  PlayerDto.fromJson(Map<String, dynamic> json) {
    puuid = json['puuid'] ?? '';
    gameName = json['gameName'] ?? '';
    tagLine = json['tagLine'] ?? '';
    leaderboardRank = json['leaderboardRank'] ?? 0;
    rankedRating = json['rankedRating'] ?? 0;
    numberOfWins = json['numberOfWins'] ?? 0;
  }
}
