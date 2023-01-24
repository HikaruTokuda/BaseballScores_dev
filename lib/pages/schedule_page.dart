import 'package:baseball_club/models/game_model.dart';
import 'package:baseball_club/pages/add_result_page.dart';
import 'package:baseball_club/pages/game_result_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class SchedulePage extends StatefulWidget {
  List<Game> games;
  SchedulePage(this.games, {Key? key}) : super(key: key) {}
  
  @override
  _SchedulePageState createState() => _SchedulePageState();
}


class _SchedulePageState extends State<SchedulePage> {
  Game game = Game();
  int currentGameIndex = 0;
  @override
  Widget build(BuildContext context) {
    game = widget.games[currentGameIndex];
    initializeDateFormatting('ja_JP');
    final dateFormatForDayOfWeek = DateFormat.E('ja');
    final formatStrForDayOfWeek = dateFormatForDayOfWeek.format(game.dateTime!);
    String formattedDate = '${game.dateTime?.year}/${game.dateTime?.month}/${game.dateTime?.day} ($formatStrForDayOfWeek)';
    List<String> headers = ['Team', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'Runs', 'Hits', 'E'];
    List<String> battingFirst = game.firstStrikeTeam ?? ['', '', '', '', '', '', '', '', '', '', '', '', '',];
    List<String> battingLater = game.backAttackTeam ?? ['', '', '', '', '', '', '', '', '', '', '', '', '',];
    List<List<String>> dispDatas = [headers, battingFirst, battingLater];
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 36),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: TextButton(
                      onPressed: () {
                        if( currentGameIndex < widget.games.length - 1) {
                          setState(() {
                            currentGameIndex++;
                          });
                        }
                      },
                      child: Text(currentGameIndex.toString()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      formattedDate,
                      style: const TextStyle(
                          fontSize: 24
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0, top: 15),
                    child: TextButton(
                      onPressed: () {
                        if( currentGameIndex > 0) {
                          setState(() {
                            currentGameIndex--;
                          });
                        }
                      },
                      child: Text(currentGameIndex.toString()),
                    ),
                  )
                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 36),
            child: Text(game.place!),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: InkWell(
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => GameResultPage(game)))
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: Text(
                      createResultString(game.firstStrikeTeam, true),
                      style: const TextStyle(
                          fontSize: 24
                      ),
                    ),
                  ),
                  Text(
                    createResultString(game.backAttackTeam, false),
                    style: const TextStyle(
                        fontSize: 24
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(DateFormat.Hm().format(game.dateTime!)),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Table(
              border: TableBorder.all(),
              columnWidths: const <int, TableColumnWidth>{
                0: FixedColumnWidth(150),
                1: FixedColumnWidth(64),
                2: FixedColumnWidth(64),
                3: FixedColumnWidth(64),
                4: FixedColumnWidth(64),
                5: FixedColumnWidth(64),
                6: FixedColumnWidth(64),
                7: FixedColumnWidth(64),
                8: FixedColumnWidth(64),
                9: FixedColumnWidth(64),
                10: FixedColumnWidth(64),
                11: FixedColumnWidth(64),
                12: FixedColumnWidth(64),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: <TableRow>[
                TableRow(
                  children: <Widget>[
                    Container(
                      height: 36,
                      alignment: Alignment.center,
                      child: Text(dispDatas[0][0])
                    ),
                    Container(
                      height: 36,
                      alignment: Alignment.center,
                      child: Text(dispDatas[0][1])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[0][2])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[0][3])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[0][4])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[0][5])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[0][6])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[0][7])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[0][8])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[0][9])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[0][10])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[0][11])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[0][12])
                    ),
                  ],
                ),
                TableRow(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                  children: <Widget>[
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[1][0])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[1][1])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[1][2])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[1][3])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[1][4])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[1][5])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[1][6])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[1][7])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[1][8])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[1][9])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[1][10])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[1][11])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[1][12])
                    ),
                  ],
                ),
                TableRow(
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                  children: <Widget>[
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[2][0])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[2][1])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[2][2])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[2][3])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[2][4])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[2][5])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[2][6])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[2][7])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[2][8])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[2][9])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[2][10])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[2][11])
                    ),
                    Container(
                        height: 36,
                        alignment: Alignment.center,
                        child: Text(dispDatas[2][12])
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(
                game.discription ?? '',
                style: const TextStyle(
                  fontSize: 16
                ),
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(
              '勝ち投手  ${game.winnerPitcher}',
              style: const TextStyle(
                fontSize: 16
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '本塁打  ',
                style: TextStyle(
                  fontSize: 16
                ),
              ),
              for(var homerunBatter in game.homerunBatter!) Text('${homerunBatter}  ')
            ],
          )
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: FloatingActionButton(
              heroTag: "Edit",
              onPressed: () {
                // Add your onPressed code here!

              },
              backgroundColor: Colors.green,
              child: const Icon(Icons.edit),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: FloatingActionButton(
              heroTag: "Add",
              onPressed: () {
                // Add your onPressed code here!
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AddResultPage()));
              },
              backgroundColor: Colors.red,
              child: const Icon(Icons.delete),
            ),
          ),
          FloatingActionButton(
            heroTag: "Delete",
            onPressed: () {
              // Add your onPressed code here!
            },
            backgroundColor: Colors.blue,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }

  String createResultString(List<String>? result, bool firstAttack) {
    String? retVal = '';
    if(firstAttack) {
      retVal = result != null ? '${result[0]}  ${result[11]} - ' : '';
    } else {
      retVal = result != null ? '${result[11]}  ${result[0]}' : '';
    }
    return retVal;
  }
}
