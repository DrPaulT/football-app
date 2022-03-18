import 'package:flutter/material.dart';
import 'package:football_app/ui/home/home_page.dart';
import 'package:football_app/ui/notifier/match_notifier.dart';
import 'package:provider/provider.dart';

class FootballApp extends StatelessWidget {
  const FootballApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (_) => MatchNotifier(),
        child: const HomePage(),
      ),
    );
  }
}
