class RecentMatches {
  late MatchInfoDto matchinfo;
  late List<PlayerDto> players;
  late List<CoachDto> coaches;
  late List<TeamDto> teams;
  late List<RoundResultDto> roundResuts;
  RecentMatches(
      this.matchinfo, this.players, this.coaches, this.teams, this.roundResuts);
  RecentMatches.fromJson(Map<String, dynamic> json) {
    matchinfo = MatchInfoDto.fromJson(json['matchinfo']!);
    players = <PlayerDto>[];
    json['players']!.forEach((v) {
      players.add(PlayerDto.fromJson(v));
    });
    coaches = <CoachDto>[];
    json['coaches']!.forEach((v) {
      coaches.add(CoachDto.fromJson(v));
    });
    teams = <TeamDto>[];
    json['teams'].forEach((v) {
      teams.add(TeamDto.fromJson(v));
    });
    roundResuts = <RoundResultDto>[];
    json['roundResuts'].forEach((v) {
      roundResuts.add(RoundResultDto.fromJson(v));
    });
  }
}

class MatchInfoDto {
  late String matchId;
  late String mapId;
  late int gameLengthMillis;
  late int gameStartMillis;
  late String provisioningFlowId;
  late bool isCompleted;
  late String customGameName;
  late String queueId;
  late String gameMode;
  late bool isRanked;
  late String seasonId;
  MatchInfoDto(
      this.matchId,
      this.mapId,
      this.gameLengthMillis,
      this.gameStartMillis,
      this.provisioningFlowId,
      this.isCompleted,
      this.customGameName,
      this.queueId,
      this.gameMode,
      this.isRanked,
      this.seasonId);
  MatchInfoDto.fromJson(Map<String, dynamic> json) {
    matchId = json['matchId'] ?? '';
    mapId = json['mapId'] ?? '';
    gameLengthMillis = json['gameLengthMillis'] ?? 0;
    gameStartMillis = json['gameStartMillis'] ?? 0;
    provisioningFlowId = json['provisioningFlowId'] ?? '';
    isCompleted = json['isCompleted'] ?? false;
    customGameName = json['customGameName'] ?? '';
    queueId = json['queueId'] ?? '';
    gameMode = json['gameMode'] ?? '';
    isRanked = json['isRanked'] ?? false;
    seasonId = json['seasonId'] ?? '';
  }
}

class PlayerDto {
  late String puuid;
  late String gameName;
  late String tagLine;
  late String teamId;
  late String partyId;
  late String characterId;
  late PlayerStatsDto stats;
  late int competitiveTier;
  late String playerCard;
  late String playerTitle;
  PlayerDto(
      this.puuid,
      this.gameName,
      this.tagLine,
      this.teamId,
      this.partyId,
      this.characterId,
      this.stats,
      this.competitiveTier,
      this.playerCard,
      this.playerTitle);
  PlayerDto.fromJson(Map<String, dynamic> json) {
    puuid = json['puuid'] ?? '';
    gameName = json['gameName'] ?? '';
    tagLine = json['tagLine'] ?? '';
    teamId = json['teamId'] ?? '';
    partyId = json['partyId'] ?? '';
    characterId = json['characterId'];
    stats = PlayerStatsDto.fromJson(json['stats']!);
    competitiveTier = json['competitiveTier'] ?? 0;
    playerCard = json['playerCard'] ?? '';
    playerTitle = json['playerTitle'] ?? '';
  }
}

class PlayerStatsDto {
  late int score;
  late int roundsPlayed;
  late int kills;
  late int deaths;
  late int assists;
  late int playtimeMillis;
  late AbilityCastsDto abilityCasts;
  PlayerStatsDto(this.score, this.roundsPlayed, this.kills, this.deaths,
      this.assists, this.playtimeMillis);
  PlayerStatsDto.fromJson(Map<String, dynamic> json) {
    score = json['score'] ?? 0;
    roundsPlayed = json['roundsPlayed'] ?? 0;
    kills = json['kills'] ?? 0;
    deaths = json['deaths'] ?? 0;
    assists = json['assists'] ?? 0;
    playtimeMillis = json['playtimeMillis'] ?? 0;
    abilityCasts = AbilityCastsDto.fromJson(json['abilityCasts']!);
  }
}

class AbilityCastsDto {
  late int grenadeCasts;
  late int ability1Casts;
  late int ability2Casts;
  late int ultimateCasts;
  AbilityCastsDto(this.grenadeCasts, this.ability1Casts, this.ability2Casts,
      this.ultimateCasts);
  AbilityCastsDto.fromJson(Map<String, dynamic> json) {
    grenadeCasts = json['grenadeCasts'] ?? 0;
    ability1Casts = json['ability1Casts'] ?? 0;
    ability2Casts = json['ability2Casts'] ?? 0;
    ultimateCasts = json['ultimateCasts'] ?? 0;
  }
}

class CoachDto {
  late String puuid;
  late String teamId;
  CoachDto(this.puuid, this.teamId);
  CoachDto.fromJson(Map<String, dynamic> json) {
    puuid = json['puuid'] ?? '';
    teamId = json['teamId'] ?? '';
  }
}

class TeamDto {
  late String teamId;
  late bool won;
  late int roundsPlayed;
  late int roundsWon;
  late int numPoints;
  TeamDto(
      this.teamId, this.won, this.roundsPlayed, this.roundsWon, this.numPoints);
  TeamDto.fromJson(Map<String, dynamic> json) {
    teamId = json['teamId'] ?? '';
    won = json['won'] ?? false;
    roundsPlayed = json['roundsPlayed'] ?? 0;
    roundsWon = json['roundsWon'] ?? 0;
    numPoints = json['numPoints'] ?? 0;
  }
}

class RoundResultDto {
  late int roundNum;
  late String roundResult;
  late String roundCeremony;
  late String winningTeam;
  late String bombPlanter;
  late String bombDefuser;
  late int plantRoundTime;
  late List<PlayerLocationsDto> playerPlantLocations;
  late LocationDto plantLocation;
  late String plantSite;
  late int defuseRoundTime;
  late List<PlayerLocationsDto> defusePlayerLocations;
  late LocationDto defuseLocation;
  late List<PlayerRoundStatsDto> playerStats;
  late String roundResultCode;
  RoundResultDto(
      this.roundNum,
      this.roundResult,
      this.roundCeremony,
      this.winningTeam,
      this.bombPlanter,
      this.bombDefuser,
      this.plantRoundTime,
      this.playerPlantLocations,
      this.plantLocation,
      this.plantSite,
      this.defuseRoundTime,
      this.defusePlayerLocations,
      this.defuseLocation,
      this.playerStats,
      this.roundResultCode);
  RoundResultDto.fromJson(Map<String, dynamic> json) {
    roundNum = json['roundNum'] ?? 0;
    roundResult = json['roundResult'] ?? '';
    roundCeremony = json['roundCeremony'] ?? '';
    winningTeam = json['winningTeam'] ?? '';
    bombPlanter = json['bombPlanter'] ?? '';
    bombDefuser = json['bombDefuser'] ?? '';
    plantRoundTime = json['plantRoundTime'] ?? 0;
    playerPlantLocations = <PlayerLocationsDto>[];
    json['playerPlantLocations']!.forEach((v) {
      playerPlantLocations.add(PlayerLocationsDto.fromJson(v));
    });
    plantLocation = LocationDto.fromJson(json['plantLocation']!);
    plantSite = json['plantSite'] ?? '';
    defusePlayerLocations = <PlayerLocationsDto>[];
    json['defusePlayerLocations']!.forEach((v) {
      defusePlayerLocations.add(PlayerLocationsDto.fromJson(v));
    });
    defuseLocation = LocationDto.fromJson(json['difuseLocation']);
    playerStats = <PlayerRoundStatsDto>[];
    json['playerStats']!.forEach((v) {
      playerStats.add(PlayerRoundStatsDto.fromJson(v));
    });
    defuseRoundTime = json['defuseRoundTime'] ?? 0;
    roundResultCode = json['roundResultCode'] ?? '';
  }
}

class PlayerLocationsDto {
  late String puuid;
  late double viewRadians;
  late LocationDto location;
  PlayerLocationsDto(this.puuid, this.viewRadians, this.location);
  PlayerLocationsDto.fromJson(Map<String, dynamic> json) {
    puuid = json['puuid'] ?? '';
    viewRadians = json['viewRadians'] ?? 0.0;
    location = LocationDto.fromJson(json['location']!);
  }
}

class LocationDto {
  late int x;
  late int y;
  LocationDto(this.x, this.y);
  LocationDto.fromJson(Map<String, dynamic> json) {
    x = json['x'] ?? 0;
    y = json['y'] ?? 0;
  }
}

class PlayerRoundStatsDto {
  late String puuid;
  late List<KillsDto> kills;
  late List<DamageDto> damage;
  late int score;
  late EconomyDto economy;
  late AbilityDto ability;
  PlayerRoundStatsDto(this.puuid, this.kills, this.damage, this.score,
      this.economy, this.ability);
  PlayerRoundStatsDto.fromJson(Map<String, dynamic> json) {
    puuid = json['puuid'] ?? '';
    kills = <KillsDto>[];
    json['kills']!.forEach((v) {
      kills.add(KillsDto.fromJson(v));
    });
    damage = <DamageDto>[];
    json['damage']!.forEach((v) {
      damage.add(DamageDto.fromJson(v));
    });
    score = json['score'] ?? 0;
    economy = EconomyDto.fromJson(json['economy']!);
    ability = AbilityDto.fromJson(json['ability']!);
  }
}

class KillsDto {
  late int timeSinceGameStartMillis;
  late int timeSinceRoundStartMillis;
  late String killer;
  late String victim;
  late LocationDto victimLocation;
  late List<String> assistants;
  late List<PlayerLocationsDto> playerLocations;
  late List<FinishingDamageDto> finishingDamage;
  KillsDto(
      this.timeSinceGameStartMillis,
      this.timeSinceRoundStartMillis,
      this.killer,
      this.victim,
      this.victimLocation,
      this.assistants,
      this.playerLocations,
      this.finishingDamage);
  KillsDto.fromJson(Map<String, dynamic> json) {
    timeSinceGameStartMillis = json['timeSinceGameStartMillis'] ?? 0;
    timeSinceRoundStartMillis = json['timeSinceRoundStartMillis'] ?? 0;
    killer = json['killer'] ?? '';
    victim = json['victim'] ?? '';
    victimLocation = LocationDto.fromJson(json['victimLocation']!);
    assistants = <String>[];
    json['assistants']!.forEach((v) {
      assistants.add(v);
    });
    playerLocations = <PlayerLocationsDto>[];
    json['playerLocations']!.forEach((v) {
      PlayerLocationsDto.fromJson(v);
    });
    finishingDamage = <FinishingDamageDto>[];
    json['finishingDamage']!.forEach((v) {
      finishingDamage.add(v);
    });
  }
}

class FinishingDamageDto {
  late String damageType;
  late String damageItem;
  late bool isSecondaryFireMode;
  FinishingDamageDto(
      this.damageType, this.damageItem, this.isSecondaryFireMode);
  FinishingDamageDto.fromJson(Map<String, dynamic> json) {
    damageType = json['damageType'] ?? '';
    damageItem = json['damageItem'] ?? '';
    isSecondaryFireMode = json['isSecondaryFireMode'] ?? false;
  }
}

class DamageDto {
  late String receiver;
  late int damage;
  late int legshots;
  late int bodyshots;
  late int headshots;
  DamageDto(this.receiver, this.damage, this.legshots, this.bodyshots,
      this.headshots);
  DamageDto.fromJson(Map<String, dynamic> json) {
    receiver = json['receiver'] ?? '';
    damage = json['damage'] ?? '';
    legshots = json['legshots'] ?? '';
    bodyshots = json['bodyshots'] ?? '';
    headshots = json['headshots'] ?? '';
  }
}

class EconomyDto {
  late int loadoutValue;
  late String weapon;
  late String armor;
  late int remaining;
  late int spent;
  EconomyDto(
      this.loadoutValue, this.weapon, this.armor, this.remaining, this.spent);
  EconomyDto.fromJson(Map<String, dynamic> json) {
    loadoutValue = json['loadoutValue'] ?? '';
    weapon = json['weapon'] ?? '';
    armor = json['armor'] ?? '';
    remaining = json['remaining'] ?? '';
    spent = json['spent'] ?? '';
  }
}

class AbilityDto {
  late String grenadeEffects;
  late String ability1Effects;
  late String ability2Effects;
  late String ultimateEffects;
  AbilityDto(this.grenadeEffects, this.ability1Effects, this.ability2Effects,
      this.ultimateEffects);
  AbilityDto.fromJson(Map<String, dynamic> json) {
    grenadeEffects = json['grenadeEffects'] ?? '';
    ability1Effects = json['ability1Effects'] ?? '';
    ability2Effects = json['ability2Effects'] ?? '';
    ultimateEffects = json['ultimateEffects'] ?? '';
  }
}
