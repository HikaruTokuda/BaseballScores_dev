import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:editable/editable.dart';
import 'package:flutter_titled_container/flutter_titled_container.dart';

class AddResultPage extends StatefulWidget {
  const AddResultPage({Key? key}) : super(key: key);

  @override
  _AddResultPageState createState() => _AddResultPageState();
}

class _AddResultPageState extends State<AddResultPage> {
  @override
  Widget build(BuildContext context) {
    List rows = [
      // {'name': 'James Peter', 'date':'01/08/2007','month':'March','status':'beginner'},
      // {'name': 'Okon Etim', 'date':'09/07/1889','month':'January','status':'completed'},
      // {'name': 'Samuel Peter', 'date':'11/11/2002','month':'April','status':'intermediate'},
      // {'name': 'Udoh Ekong', 'date':'06/3/2020','month':'July','status':'beginner'},
      // {'name': 'Essien Ikpa', 'date':'12/6/1996','month':'June','status':'completed'},
    ];
//Headers or Columns
    List battingHeaders = [
      {'title':'ポジション', 'index': 1, 'key':'position'},
      {'title':'選手名', 'index': 2, 'key':'name'},
      {'title':'打数', 'index': 3, 'key':'atBat'},
      {'title':'安打', 'index': 4, 'key':'hits'},
      {'title':'二塁打', 'index': 5, 'key':'twoBase'},
      {'title':'三塁打', 'index': 6, 'key':'threeBase'},
      {'title':'打点', 'index': 7, 'key':'rbi'},
      {'title':'本塁打', 'index': 8, 'key':'hr'},
      {'title':'盗塁', 'index': 9, 'key':'stolenBase'},
    ];
    List gameResultHeaders = [
      {'title':'チーム', 'index': 1, 'key':'team'},
      {'title':'1', 'index': 2, 'key':'one'},
      {'title':'2', 'index': 3, 'key':'two'},
      {'title':'3', 'index': 4, 'key':'three'},
      {'title':'4', 'index': 5, 'key':'four'},
      {'title':'5', 'index': 6, 'key':'five'},
      {'title':'6', 'index': 7, 'key':'six'},
      {'title':'7', 'index': 8, 'key':'seven'},
      {'title':'8', 'index': 9, 'key':'eight'},
      {'title':'9', 'index': 10, 'key':'nine'},
      {'title':'計', 'index': 11, 'key':'sum'},
      {'title':'H', 'index': 12, 'key':'hits'},
      {'title':'E', 'index': 13, 'key':'errors'},
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text('試合結果', style: TextStyle(fontSize: 24),),
            Container(
              padding: const EdgeInsets.all(24),
              height: 200,
              alignment: Alignment.center,
              child: Editable(
                columns: gameResultHeaders,
                rows: rows,
                showCreateButton: true,
                tdStyle: const TextStyle(fontSize: 20),
                showSaveIcon: false,
                borderColor: Colors.grey.shade300,
              ),
            ),
            const Text('打撃成績', style: TextStyle(fontSize: 24),),
            Container(
              padding: const EdgeInsets.all(24.0),
              height: 200,
              alignment: Alignment.center,
              child: Editable(
                columns: battingHeaders,
                rows: rows,
                showCreateButton: true,
                tdStyle: const TextStyle(fontSize: 20),
                showSaveIcon: false,
                borderColor: Colors.grey.shade300,
              ),
            ),
            const Text('投手成績', style: TextStyle(fontSize: 24),),
            Container(
              padding: const EdgeInsets.all(24.0),
              height: 200,
              alignment: Alignment.center,
              child: Editable(
                columns: battingHeaders,
                rows: rows,
                showCreateButton: true,
                tdStyle: const TextStyle(fontSize: 20),
                showSaveIcon: false,
                borderColor: Colors.grey.shade300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
