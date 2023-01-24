import 'package:baseball_club/models/game_model.dart';
import 'package:flutter/material.dart';

class ButtingResultPage extends StatefulWidget {
  Game game;
  ButtingResultPage(this.game, {Key? key}) : super(key: key);
  List<String> tableHeaders = ['位置', '選手名', '打', '安', '二塁打', '三塁打', '点', '本', '盗'];

  @override
  _ButtingResultPageState createState() => _ButtingResultPageState();
}

class _ButtingResultPageState extends State<ButtingResultPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Table(
        border: TableBorder.all(),
        columnWidths: const <int, TableColumnWidth>{
          0: FixedColumnWidth(64),
          1: FlexColumnWidth(64),
          2: FixedColumnWidth(64),
          3: FixedColumnWidth(64),
          4: FixedColumnWidth(64),
          5: FixedColumnWidth(64),
          6: FixedColumnWidth(64),
          7: FixedColumnWidth(64),
          8: FixedColumnWidth(64),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: <TableRow>[
          TableRow(
            children: <Widget>[
              for(var header in widget.tableHeaders)
                Container(
                  height: 36,
                  alignment: Alignment.center,
                  child: Text(header),
                )
            ]
          ),
          for(int i = 0; i < widget.game.personalBattingScores!.length; i++)
            TableRow(
              children: <Widget>[
                Container(
                  height: 36,
                  alignment: Alignment.center,
                  child: Text(widget.game.personalBattingScores![i].positions![0].toString())
                ),
                Container(
                    height: 36,
                    alignment: Alignment.center,
                    child: Text(widget.game.personalBattingScores![i].name!)
                ),
                Container(
                    height: 36,
                    alignment: Alignment.center,
                    child: Text(widget.game.personalBattingScores![i].atBat.toString())
                ),
                Container(
                    height: 36,
                    alignment: Alignment.center,
                    child: Text(widget.game.personalBattingScores![i].hit.toString())
                ),
                Container(
                    height: 36,
                    alignment: Alignment.center,
                    child: Text(widget.game.personalBattingScores![i].twoBase.toString())
                ),
                Container(
                    height: 36,
                    alignment: Alignment.center,
                    child: Text(widget.game.personalBattingScores![i].threeBase.toString())
                ),
                Container(
                    height: 36,
                    alignment: Alignment.center,
                    child: Text(widget.game.personalBattingScores![i].rbi.toString())
                ),
                Container(
                    height: 36,
                    alignment: Alignment.center,
                    child: Text(widget.game.personalBattingScores![i].homerun.toString())
                ),
                Container(
                    height: 36,
                    alignment: Alignment.center,
                    child: Text(widget.game.personalBattingScores![i].stolenBase.toString())
                ),
              ]
            )
        ],
      ),
    );
  }
}
