class Game {
  int? id;
  List<String>? firstStrikeTeam;
  List<String>? backAttackTeam;
  DateTime? dateTime;
  String? place;
  List<PersonalBattingScore>? personalBattingScores;
  List<PersonalPitchingScore>? personalPitchingScores;
  String? winnerPitcher;
  List<String>? homerunBatter;
  String? discription;
}

class PersonalBattingScore {
  String? name;
  int? battingNumber;
  List<int>? positions;
  int? atBat;
  int? hit;
  int? rbi;
  int? single;
  int? twoBase;
  int? threeBase;
  int? homerun;
  int? stolenBase;
}

class PersonalPitchingScore {
  String? name;
  String? inning;
  int? pitches;
  int? hitted;
  int? ks;
  int? fb;
  int? db;
  int? losts;
}