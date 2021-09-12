class PlatformData {
  late String id;
  late String name;
  late List<String> locales;
  late List<StatusDto> maintenances;
  late List<StatusDto> incidents;
  PlatformData(
      this.id, this.name, this.locales, this.maintenances, this.incidents);
  PlatformData.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? '';
    name = json['name'] ?? '';
    locales = <String>[];
    json['locales']!.forEach((v) {
      locales.add(v);
    });
    maintenances = <StatusDto>[];
    json['maintenances']!.forEach((v) {
      maintenances.add(StatusDto.fromJson(v));
    });
    incidents = <StatusDto>[];
    json['incidents']!.forEach((v) {
      incidents.add(StatusDto.fromJson(v));
    });
  }
}

class StatusDto {
  late int id;
  late String maintenance_status;
  late String incident_severity;
  late List<ContentDto> titles;
  late List<UpdateDto> updates;
  late String created_at;
  late String archive_at;
  late String updated_at;
  late List<String> platforms;
  StatusDto(
      this.id,
      this.maintenance_status,
      this.incident_severity,
      this.titles,
      this.updates,
      this.created_at,
      this.archive_at,
      this.updated_at,
      this.platforms);
  StatusDto.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    maintenance_status = json['maintenance_status'] ?? '';
    incident_severity = json['incident_severity'] ?? '';
    titles = <ContentDto>[];
    json['titles']!.forEach((v) {
      titles.add(ContentDto.fromJson(v));
    });
    updates = <UpdateDto>[];
    json['updates']!.forEach((v) {
      updates.add(UpdateDto.fromJson(v));
    });
    created_at = json['created_at'] ?? '';
    updated_at = json['updated_at'] ?? '';
    platforms = <String>[];
    json['platforms']!.forEach((v) {
      platforms.add(v);
    });
  }
}

class ContentDto {
  late String locale;
  late String content;
  ContentDto(this.locale, this.content);
  ContentDto.fromJson(Map<String, dynamic> json) {
    locale = json['locale'];
    content = json['content'];
  }
}

class UpdateDto {
  late String id;
  late String author;
  late String publish;
  late List<String> publish_locations;
  late List<ContentDto> translations;
  late String created_at;
  late String updated_at;
  UpdateDto(this.id, this.author, this.publish, this.publish_locations,
      this.translations, this.created_at, this.updated_at);
  UpdateDto.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? '';
    author = json['author'] ?? '';
    publish = json['publish'] ?? '';
    publish_locations = <String>[];
    json['publish_locations']!.forEach((v) {
      publish_locations.add(v);
    });
    translations = <ContentDto>[];
    json['translations']!.forEach((v) {
      translations.add(ContentDto.fromJson(v));
    });
    created_at = json['created_at'] ?? '';
    updated_at = json['updated_at'] ?? '';
  }
}
