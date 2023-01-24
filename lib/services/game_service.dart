import 'package:baseball_club/models/game_model.dart';

class GameService {
  List<Game> games = <Game>[];

  GameService() {
    createDummyGames();
  }

  createDummyGames() {
    for(int i = 0; i < 10; i++) {
      var game = Game();
      game.id = i;
      game.firstStrikeTeam = ['Team${i}', '2', '0', '0', '0', '0', '0', '0', '0','0', '0', '2', '10', ''];
      game.backAttackTeam = ['Team${i+1}', '1', '0', '0', '0', '0', '0', '0', '0','0', '0', '1', '10', ''];
      game.dateTime = DateTime.now().add(Duration(days: i) * -1);
      game.place = 'stadium$i';
      game.winnerPitcher = '${i}田 ${i}郎';
      game.homerunBatter = ['${i}田 ${i}郎', '${i}元 ${i}男'];
      game.discription = 'this is the ${i}st game in this season';

      game.personalBattingScores = [];
      game.personalPitchingScores = [];
      for(int j = 0; j < 9; j++) {
        var personalBattingScore = PersonalBattingScore();

        personalBattingScore.name = '${j}田 ${j}郎';
        personalBattingScore.battingNumber = j + 1;
        personalBattingScore.positions = [j + 1];
        personalBattingScore.atBat = j;
        personalBattingScore.hit = j - 0 < 0 ? 0 : j - 0;
        personalBattingScore.single = 1;
        personalBattingScore.twoBase = 0;
        personalBattingScore.threeBase = 0;
        personalBattingScore.homerun = 0;
        personalBattingScore.stolenBase = 0;
        personalBattingScore.rbi = j;
        if(j == 8 || j == 7) {
          var personalPitchingScore = PersonalPitchingScore();
          personalPitchingScore.name = '${j}村 ${j+1}郎';
          personalPitchingScore.inning = '9';
          personalPitchingScore.pitches = 100;
          personalPitchingScore.hitted = 5;
          personalPitchingScore.ks = 5;
          personalPitchingScore.fb = 2;
          personalPitchingScore.db = 1;
          personalPitchingScore.losts = 3;
          game.personalPitchingScores!.add(personalPitchingScore);
        }
        game.personalBattingScores!.add(personalBattingScore);

      }
      games.add(game);
    }
  }
}