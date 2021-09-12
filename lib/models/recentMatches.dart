class RecentMatches {
  late int currentTime;
  late List<String> matchIds;
  RecentMatches(this.currentTime, this.matchIds);
  RecentMatches.fromJson(Map<String, dynamic> json) {
    currentTime = json['currentTime'] ?? 0;
    matchIds = <String>[];
    json['matchIds']!.forEach((v) {
      matchIds.add(v);
    });
  }
}
