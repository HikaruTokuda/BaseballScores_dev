import 'package:baseball_club/models/game_model.dart';
import 'package:flutter/material.dart';

class PitchingResultPage extends StatefulWidget {
  Game game;
  PitchingResultPage(this.game, {Key? key}) : super(key: key);
  List<String> tableHeaders = ['選手名', '回', '球', '安', '振', '四', '死', '失'];

  @override
  _PitchingResultPageState createState() => _PitchingResultPageState();
}

class _PitchingResultPageState extends State<PitchingResultPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Table(
        border: TableBorder.all(),
        columnWidths: const <int, TableColumnWidth>{
          0: FixedColumnWidth(64),
          1: FixedColumnWidth(64),
          2: FixedColumnWidth(64),
          3: FixedColumnWidth(64),
          4: FixedColumnWidth(64),
          5: FixedColumnWidth(64),
          6: FixedColumnWidth(64),
          7: FixedColumnWidth(64),
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
          for(int i = 0; i < widget.game.personalPitchingScores!.length; i++)
            TableRow(
                children: <Widget>[
                  Container(
                      height: 36,
                      alignment: Alignment.center,
                      child: Text(widget.game.personalPitchingScores![i].name!)
                  ),
                  Container(
                      height: 36,
                      alignment: Alignment.center,
                      child: Text(widget.game.personalPitchingScores![i].inning!)
                  ),
                  Container(
                      height: 36,
                      alignment: Alignment.center,
                      child: Text(widget.game.personalPitchingScores![i].pitches.toString())
                  ),
                  Container(
                      height: 36,
                      alignment: Alignment.center,
                      child: Text(widget.game.personalPitchingScores![i].hitted.toString())
                  ),
                  Container(
                      height: 36,
                      alignment: Alignment.center,
                      child: Text(widget.game.personalPitchingScores![i].ks.toString())
                  ),
                  Container(
                      height: 36,
                      alignment: Alignment.center,
                      child: Text(widget.game.personalPitchingScores![i].fb.toString())
                  ),
                  Container(
                      height: 36,
                      alignment: Alignment.center,
                      child: Text(widget.game.personalPitchingScores![i].db.toString())
                  ),
                  Container(
                      height: 36,
                      alignment: Alignment.center,
                      child: Text(widget.game.personalPitchingScores![i].losts.toString())
                  ),
                ]
            )
        ],
      ),
    );
  }
}
