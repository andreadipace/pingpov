import 'package:flutter/material.dart';
import 'package:pingpov/ui/pages/admin/dashboard.dart';

class Drawbar extends StatefulWidget {
  const Drawbar({Key? key}) : super(key: key);

  @override
  State<Drawbar> createState() => _DrawbarState();
}

class _DrawbarState extends State<Drawbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 40,
                    child: Icon(Icons.account_circle_sharp)
                  ),
                  IconButton(
                    onPressed: _toggleDark,
                    icon: const Icon(Icons.sunny)
                  )
                ],
              )
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              minLeadingWidth: 10,
              title: const Text('Impostazioni'),
              onTap: _openSettings
            ),
            ListTile(
              leading: const Icon(Icons.manage_accounts),
              minLeadingWidth: 10,
              title: const Text('Admin'),
              onTap: _openAdminPanel,
            ),
          ],
        )
      )
    );
  }

  void _openAdminPanel() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const AdminPage())
    );
  }

  void _openSettings() {
    throw UnimplementedError("Settings");
  }

  void _toggleDark() {
    throw UnimplementedError("Toggle dark");
  }
}