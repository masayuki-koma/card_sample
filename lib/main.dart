import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        //SafeAreaはスマホの一番上部など被りたくないところにコンテンツを表示させないウィジット
        body: SafeArea(
          //Center widgetを使うことでCardを中央よせすることができる。
          child: Center(
            child: Column(
              //columnの縦の列の並び方を決めるのがmainAxisAlignment
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //ただのCardを使う場合、childの大きさにCardが自動で設定される。
                Card(
                  child: Text('カード1',style: TextStyle(fontSize: 32.0),),color: Colors.red,),
                //SizedBoxでCardの高さ、幅を設定することができる
                SizedBox(
                  child: Card(
                      child: Center(
                          child: Text('カード2',style: TextStyle(fontSize: 32.0),)),color:Colors.blueAccent),
                  height: 100,
                  width: 200,
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}