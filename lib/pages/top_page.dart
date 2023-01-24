import 'package:baseball_club/models/game_model.dart';
import 'package:baseball_club/pages/schedule_page.dart';
import 'package:baseball_club/services/game_service.dart';
import 'package:flutter/material.dart';


class TopPage extends StatefulWidget {
  final GameService _gameService = GameService();
  TopPage({Key? key}) : super(key: key);

  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Murata baseball club'),
            bottom: const TabBar(
                tabs: [
                  Tab(text: 'Schedule',),
                  Tab(text: 'Score')
                ]
            ),
          ),
          body: TabBarView(
            children: [
              SchedulePage(sortGames()),
              Scaffold()
            ],
          ),
        ),
      ),
    );
  }

  List<Game> sortGames() {
    var games = widget._gameService.games;
    games.sort((a, b) => b.dateTime!.compareTo(a.dateTime!));
    return games;
  }
}
