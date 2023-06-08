import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tugasakhir_kelompok8/task.dart';

import 'data.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  late Timer? _timer;
  String jam = "Tes";
  @override
  void initState() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        jam = DateFormat('HH:mm:ss').format(DateTime.now());
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var waktu = DateTime.now();
    var tanggal = DateFormat("EEEE, d MMMM yyyy").format(waktu);

    return Scaffold(
      backgroundColor: Color(0xFF2D2F41),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(jam, style: TextStyle(color: Colors.white, fontSize: 24)),
            Text(tanggal, style: TextStyle(color: Colors.white, fontSize: 24)),
            Expanded(
              child: ListView.builder(
                itemCount: DataApp.tes.length,
                itemBuilder: (context, index) {
                  var schedule = DataApp.tes[index];
                  return Container(
                    color: Color.fromRGBO(
                        241, 214, 171, 1), // Ubah sesuai kebutuhan Anda
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          schedule.namaSchedule,
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          schedule.waktuSchedule.toString(),
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.task_alt_rounded,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Task();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
