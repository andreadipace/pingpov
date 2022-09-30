import 'package:flutter/material.dart';

class NewTournamentDialog extends StatefulWidget {
  const NewTournamentDialog({Key? key}) : super(key: key);

  @override
  State<NewTournamentDialog> createState() => _NewTournamentDialogState();
}

class _NewTournamentDialogState extends State<NewTournamentDialog> {

  DateTime selectedDateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Crea torneo"),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            onTap: _pickDateTime,
            title: Text(_printDateTime()),
            trailing: const Icon(Icons.edit),
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: _createTournament,
          icon: const Icon(Icons.check)
        )
      ],
    );
  }

  Future<DateTime?> _selectDate() async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDateTime,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime.now(),
        lastDate: DateTime(2023)
    );
    return picked;
  }

  Future<TimeOfDay?> _selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 16, minute: 30),
    );
    return picked;
  }

  void _pickDateTime() async {
    final date = await _selectDate();
    if (date == null) return;
    final time = await _selectTime();
    if (time == null) return;

    setState(() => {
      selectedDateTime = DateTime(date.year, date.month, date.day, time.hour, time.minute)
    });
  }

  void _createTournament() {
    throw UnimplementedError("Create tournament");
  }
  
  String _printDateTime() {
    String day = "${selectedDateTime.day}".padLeft(2, '0');
    int month = selectedDateTime.month;
    int year = selectedDateTime.year;

    String hour = "${selectedDateTime.hour}".padLeft(2, '0');
    String minute = "${selectedDateTime.minute}".padLeft(2, '0');

    return "$day/$month/$year alle $hour:$minute";
  }
}