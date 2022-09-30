import 'package:flutter/material.dart';
import 'package:pingpov/ui/pages/drawbar.dart';
import 'package:pingpov/ui/pages/notifications.dart';
import 'package:pingpov/ui/tabs/wrapper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: const Drawbar(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text("PingPov"),
          bottom: const TabBar(
            tabs: [
              Tab(child: Text("Profilo")),
              Tab(child: Text("Tornei")),
              Tab(child: Text("Giocatori")),
            ]
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.notifications),
              tooltip: 'Notifiche',
              onPressed: _openNotifications
            ),
          ],
        ),
        body: const TabBarView(
          children: [
            ProfileTab(),
            TournamentsTab(),
            PlayersTab()
          ]
        ),
      )
    );
  }

  void _openNotifications() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const NotificaionsPage())
    );
  }
}