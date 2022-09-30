import 'package:flutter/material.dart';
import 'package:pingpov/ui/dialogs/newtournament.dart';
import 'package:pingpov/ui/pages/admin/managetournament.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _newTournament,
        child: const Icon(Icons.add)
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4),
            child: ListTile(
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
              tileColor: (index == 0) ? Colors.green : Colors.grey[300],
              leading: (index == 0) ? Icon(Icons.person) : Icon(Icons.people),
              title: Text("ciao $index"),
              onTap: _openTournament,
            )
          );
        }
      ),
    );
  }

  void _newTournament() {
    showDialog(
      context: context,
      builder: (context) => const NewTournamentDialog()
    );
  }

  void _openTournament() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const TournamentManagerPage()) // TODO: pass tournament info
    );
  }
}