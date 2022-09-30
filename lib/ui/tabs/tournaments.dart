import 'package:flutter/material.dart';

class TournamentsTab extends StatefulWidget {
  const TournamentsTab({Key? key}) : super(key: key);

  @override
  State<TournamentsTab> createState() => _TournamentsTabState();
}

class _TournamentsTabState extends State<TournamentsTab> {
  @override
  Widget build(BuildContext context) {
    return const Text("tournaments");
  }
}