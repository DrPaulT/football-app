import 'package:flutter/material.dart';
import 'package:football_app/ui/notifier/match_notifier.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<MatchNotifier>().teamWithMostWins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Football App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _Intro(),
                  _Result(),
                ],
              ),
            ),
          ),
          _Footer(),
        ],
      ),
    );
  }
}

class _Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 0, 32, 16),
      child: Text(
        'The team with the most wins in the last 30 days is',
        style: Theme.of(context).textTheme.headline6,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class _Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final winningTeam = context.watch<MatchNotifier>().winningTeam;
    if (winningTeam.isNotEmpty) {
      return Text(
        winningTeam,
        style: Theme.of(context).textTheme.headline4,
      );
    } else {
      return const Padding(
        padding: EdgeInsets.all(8),
        child: SizedBox.square(
          dimension: 24,
          child: CircularProgressIndicator(),
        ),
      );
    }
  }
}

class _Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      // We need this as part of the free plan from football-data.org.
      child: Text(
        'Football data provided by the Football-Data.org API',
        style: Theme.of(context).textTheme.caption,
      ),
    );
  }
}
