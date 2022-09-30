
import 'package:flutter/material.dart';
import 'package:pingpov/ui/widget/match.dart';

class TournamentManagerPage extends StatefulWidget {
  const TournamentManagerPage({Key? key}) : super(key: key);

  @override
  State<TournamentManagerPage> createState() => _TournamentManagerPageState();
}

class _TournamentManagerPageState extends State<TournamentManagerPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Gestione match"),
          bottom: const TabBar(
            tabs: [
              Tab(child: Text("Attivi")),
              Tab(child: Text("Prossimi")),
              Tab(child: Text("Finiti")),
            ]
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return const MatchWidget();
              }
            ),
            const Center(child: Text("ciao1")),
            const Center(child: Text("ciao2"))
          ]
        ),
      )
    );
  }
}