import 'package:flutter/material.dart';

class NotificaionsPage extends StatefulWidget {
  const NotificaionsPage({Key? key}) : super(key: key);

  @override
  State<NotificaionsPage> createState() => _NotificaionsPageState();
}

class _NotificaionsPageState extends State<NotificaionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifiche"),
      ),
      body: const Text("lista notifiche"),
    );
  }
}