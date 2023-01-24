import 'package:baseball_club/models/game_model.dart';
import 'package:baseball_club/pages/batting_result.dart';
import 'package:baseball_club/pages/pitching_result.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class GameResultPage extends StatefulWidget {
  Game game;
  GameResultPage(this.game, {Key? key}) : super(key: key);

  @override
  _GameResultPageState createState() => _GameResultPageState();
}

class _GameResultPageState extends State<GameResultPage> {
  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('ja_JP');
    final dateFormatForDayOfWeek = DateFormat.E('ja');
    final formatStrForDayOfWeek = dateFormatForDayOfWeek.format(widget.game.dateTime!);
    String formattedDate = '${widget.game.dateTime!.year}/${widget.game.dateTime!.month}/${widget.game.dateTime!.day} ($formatStrForDayOfWeek)';
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('成績'),
            bottom: const TabBar(
                tabs: [
                  Tab(text: '打者成績',),
                  Tab(text: '投手成績')
                ]
            ),
          ),
          body: TabBarView(
            children: [
              ButtingResultPage(widget.game),
              PitchingResultPage(widget.game)
            ],
          ),
        ),
      ),
    );
  }
}
