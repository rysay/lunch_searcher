import 'package:flutter/material.dart';
import 'package:lunch_searcher/search/screenMap.dart';

class MyApp extends StatelessWidget {
  // トップ画面
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'top',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '昼食決めたったー'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // コンストラクタ
  MyHomePage({Key key, this.title}) : super(key: key);

  // メンバ変数
  final String title;

  // 必須メソッド
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ナビゲーションバー
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      // 画面本体
      body: Center(
        child: ElevatedButton(
          child: Text('開始'),
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SearchPageTop(),
              ),
            );
          },
        ),
      ),
    );
  }
}
