import 'package:flutter/material.dart';

class PlayersTab extends StatefulWidget {
  const PlayersTab({Key? key}) : super(key: key);

  @override
  State<PlayersTab> createState() => _PlayersTabState();
}

class _PlayersTabState extends State<PlayersTab> {
  @override
  Widget build(BuildContext context) {
    return const Text("players");
  }
}