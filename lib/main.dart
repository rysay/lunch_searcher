import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:lunch_searcher/top/top.dart';

void main() async {
  // ".env" ファイルに設定された環境変数を読み込む
  // env['環境変数名']で取り出し
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  runApp(MyApp());
}
