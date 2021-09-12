class Content {
  late String version;
  late List<Character> characters;
  late List<GameMap> gameMaps;
  late List<Chroma> chromas;
  late List<Skin> skins;
  late List<SkinLevel> skinLevels;
  late List<Equip> equips;
  late List<GameMode> gameModes;
  late List<Spray> sprays;
  late List<SprayLevel> sprayLevels;
  late List<Charm> charms;
  late List<CharmLevel> charmLevels;
  late List<PlayerCard> playerCards;
  late List<PlayerTitle> playerTitles;
  late List<Act> acts;
  late List<Ceremony> ceremonies;
  Content(
    this.version,
    this.characters,
    this.gameMaps,
    this.chromas,
    this.skins,
    this.skinLevels,
    this.equips,
    this.gameModes,
    this.sprays,
    this.sprayLevels,
    this.charms,
    this.charmLevels,
    this.playerCards,
    this.playerTitles,
    this.acts,
    this.ceremonies,
  );
  Content.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    characters = <Character>[];
    json['characters']!.forEach((v) {
      characters.add(Character.fromJson(v));
    });
    gameMaps = <GameMap>[];
    json['maps']!.forEach((v) {
      gameMaps.add(GameMap.fromJson(v));
    });
    chromas = <Chroma>[];
    json['chromas']!.forEach((v) {
      gameMaps.add(GameMap.fromJson(v));
    });
    skins = <Skin>[];
    json['skins']!.forEach((v) {
      skins.add(Skin.fromJson(v));
    });
    skinLevels = <SkinLevel>[];
    json['skinLevels']!.forEach((v) {
      skinLevels.add(SkinLevel.fromJson(v));
    });
    equips = <Equip>[];
    json['equips']!.forEach((v) {
      equips.add(Equip.fromJson(v));
    });
    gameModes = <GameMode>[];
    json['gameModes']!.forEach((v) {
      gameModes.add(GameMode.fromJson(v));
    });
    sprays = <Spray>[];
    json['sprays']!.forEach((v) {
      sprays.add(Spray.fromJson(v));
    });
    sprayLevels = <SprayLevel>[];
    json['sprayLevels']!.forEach((v) {
      sprayLevels.add(SprayLevel.fromJson(v));
    });
    charms = <Charm>[];
    json['charms']!.forEach((v) {
      charms.add(Charm.fromJson(v));
    });
    charmLevels = <CharmLevel>[];
    json['charmsLevels']!.forEach((v) {
      charms.add(Charm.fromJson(v));
    });
    playerCards = <PlayerCard>[];
    json['playerCards']!.forEach((v) {
      playerCards.add(PlayerCard.fromJson(v));
    });
    playerTitles = <PlayerTitle>[];
    json['playerTitles']!.forEach((v) {
      playerTitles.add(PlayerTitle.fromJson(v));
    });
    acts = <Act>[];
    json['acts']!.forEach((v) {
      acts.add(Act.fromJson(v));
    });
    ceremonies = <Ceremony>[];
    json['ceremonies']!.forEach((v) {
      ceremonies.add(Ceremony.fromJson(v));
    });
  }
}

class Character {
  late String name;
  late LocalisedNames localisedNames;
  late String id;
  late String assetName;
  Character(this.name, this.localisedNames, this.id, this.assetName);
  Character.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? '';
    localisedNames = LocalisedNames.fromJson(json['localisedNames']!);
    id = json['id'] ?? '';
    assetName = json['assetName'] ?? '';
  }
}

class GameMap {
  late String name;
  late LocalisedNames localisedNames;
  late String id;
  late String assetName;
  GameMap(this.name, this.localisedNames, this.id, this.assetName);
  GameMap.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? '';
    localisedNames = LocalisedNames.fromJson(json['localisedNames']!);
    id = json['id'] ?? '';
    assetName = json['assetName'] ?? '';
  }
}

class Chroma {
  late String name;
  late LocalisedNames localisedNames;
  late String id;
  late String assetName;
  Chroma(this.name, this.localisedNames, this.id, this.assetName);
  Chroma.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? '';
    localisedNames = LocalisedNames.fromJson(json['localisedNames']!);
    id = json['id'] ?? '';
    assetName = json['assetName'] ?? '';
  }
}

class Skin {
  late String name;
  late LocalisedNames localisedNames;
  late String id;
  late String assetName;
  Skin(this.name, this.localisedNames, this.id, this.assetName);
  Skin.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? '';
    localisedNames = LocalisedNames.fromJson(json['localisedNames']!);
    id = json['id'] ?? '';
    assetName = json['assetName'] ?? '';
  }
}

class SkinLevel {
  late String name;
  late LocalisedNames localisedNames;
  late String id;
  late String assetName;
  SkinLevel(this.name, this.localisedNames, this.id, this.assetName);
  SkinLevel.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? '';
    localisedNames = LocalisedNames.fromJson(json['localisedNames']!);
    id = json['id'] ?? '';
    assetName = json['assetName'] ?? '';
  }
}

class Equip {
  late String name;
  late LocalisedNames localisedNames;
  late String id;
  late String assetName;
  Equip(this.name, this.localisedNames, this.id, this.assetName);
  Equip.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? '';
    localisedNames = LocalisedNames.fromJson(json['localisedNames']!);
    id = json['id'] ?? '';
    assetName = json['assetName'] ?? '';
  }
}

class GameMode {
  late String name;
  late LocalisedNames localisedNames;
  late String id;
  late String assetName;
  late String assetPath;
  GameMode(
      this.name, this.localisedNames, this.id, this.assetName, this.assetPath);
  GameMode.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? '';
    localisedNames = LocalisedNames.fromJson(json['localisedNames']!);
    id = json['id'] ?? '';
    assetName = json['assetName'] ?? '';
    assetPath = json['assetPath'] ?? '';
  }
}

class Spray {
  late String name;
  late LocalisedNames localisedNames;
  late String id;
  late String assetName;
  Spray(this.name, this.localisedNames, this.id, this.assetName);
  Spray.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? '';
    localisedNames = LocalisedNames.fromJson(json['localisedNames']!);
    id = json['id'] ?? '';
    assetName = json['assetName'] ?? '';
  }
}

class SprayLevel {
  late String name;
  late LocalisedNames localisedNames;
  late String id;
  late String assetName;
  SprayLevel(this.name, this.localisedNames, this.id, this.assetName);
  SprayLevel.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? '';
    localisedNames = LocalisedNames.fromJson(json['localisedNames']!);
    id = json['id'] ?? '';
    assetName = json['assetName'] ?? '';
  }
}

class Charm {
  late String name;
  late LocalisedNames localisedNames;
  late String id;
  late String assetName;
  Charm(this.name, this.localisedNames, this.id, this.assetName);
  Charm.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? '';
    localisedNames = LocalisedNames.fromJson(json['localisedNames']!);
    id = json['id'] ?? '';
    assetName = json['assetName'] ?? '';
  }
}

class CharmLevel {
  late String name;
  late LocalisedNames localisedNames;
  late String id;
  late String assetName;
  CharmLevel(this.name, this.localisedNames, this.id, this.assetName);
  CharmLevel.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? '';
    localisedNames = LocalisedNames.fromJson(json['localisedNames']!);
    id = json['id'] ?? '';
    assetName = json['assetName'] ?? '';
  }
}

class PlayerCard {
  late String name;
  late LocalisedNames localisedNames;
  late String id;
  late String assetName;
  PlayerCard(this.name, this.localisedNames, this.id, this.assetName);
  PlayerCard.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? '';
    localisedNames = LocalisedNames.fromJson(json['localisedNames']!);
    id = json['id'] ?? '';
    assetName = json['assetName'] ?? '';
  }
}

class PlayerTitle {
  late String name;
  late LocalisedNames localisedNames;
  late String id;
  late String assetName;
  PlayerTitle(this.name, this.localisedNames, this.id, this.assetName);
  PlayerTitle.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? '';
    localisedNames = LocalisedNames.fromJson(json['localisedNames']!);
    id = json['id'] ?? '';
    assetName = json['assetName'] ?? '';
  }
}

class Act {
  late String id;
  late String parentId;
  late String type;
  late String name;
  late LocalisedNames localisedNames;
  late bool isActive;
  Act.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? '';
    parentId = json['parentId'] ?? '';
    type = json['type'] ?? '';
    name = json['name'] ?? '';
    localisedNames = LocalisedNames.fromJson(json['localisedNames']!);
    isActive = json['isActive'];
  }
}

class Ceremony {
  late String name;
  late LocalisedNames localisedNames;
  late String id;
  late String assetName;
  Ceremony(this.name, this.localisedNames, this.id, this.assetName);
  Ceremony.fromJson(Map<String, dynamic> json) {
    name = json['name'] ?? '';
    localisedNames = LocalisedNames.fromJson(json['localisedNames']!);
    id = json['id'] ?? '';
    assetName = json['assetName'] ?? '';
  }
}

class LocalisedNames {
  late String arAE;
  late String deDE;
  late String enUS;
  late String esES;
  late String esMX;
  late String frFR;
  late String idID;
  late String itIT;
  late String jaJP;
  late String koKR;
  late String plPL;
  late String ptBR;
  late String ruRU;
  late String thTH;
  late String trTR;
  late String viVN;
  late String zhCN;
  late String zhTW;
  LocalisedNames(
      this.arAE,
      this.deDE,
      this.enUS,
      this.esES,
      this.esMX,
      this.frFR,
      this.idID,
      this.itIT,
      this.jaJP,
      this.koKR,
      this.plPL,
      this.ptBR,
      this.ruRU,
      this.thTH,
      this.trTR,
      this.viVN,
      this.zhCN,
      this.zhTW);
  LocalisedNames.fromJson(Map<String, dynamic> json) {
    arAE = json['ar-AE'] ?? '';
    deDE = json['de-DE'] ?? '';
    enUS = json['en-US'] ?? '';
    esES = json['es-ES'] ?? '';
    esMX = json['es-MX'] ?? '';
    frFR = json['fr-FR'] ?? '';
    idID = json['id-ID'] ?? '';
    itIT = json['it-IT'] ?? '';
    jaJP = json['ja-JP'] ?? '';
    koKR = json['ko-KR'] ?? '';
    plPL = json['pl-PL'] ?? '';
    ptBR = json['pt-BR'] ?? '';
    ruRU = json['ru-RU'] ?? '';
    thTH = json['th-TH'] ?? '';
    trTR = json['tr-TR'] ?? '';
    viVN = json['vi-VN'] ?? '';
    zhCN = json['zh-CN'] ?? '';
    zhTW = json['zh-TW'] ?? '';
  }
}
