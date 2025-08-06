import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tmp_absensi_app/models/attendance.dart';
import 'package:tmp_absensi_app/presentation/home/history/history_detail_page.dart';

import '../../../services/storage_service.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Riwayat Absensi')),
      body: FutureBuilder<List<Attendance>>(
        future: StorageService.getAll(),
        builder: (context, snap) {
          if (snap.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          final list = snap.data;
          if (list == null || list.isEmpty) {
            return const Center(child: Text('Belum ada riwayat.'));
          }
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (ctx, i) {
              final a = list[i];
              final timeStr = a.timestamp.toLocal().toString().split('.').first;
              return ListTile(
                leading: Image.file(
                  File(a.photoPath),
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                title: Text(timeStr),
                subtitle: Text(
                  'Lokasi: ${a.locationValid ? "Valid" : "Tidak valid"}\n'
                  '(${a.latitude.toStringAsFixed(5)}, '
                  '${a.longitude.toStringAsFixed(5)})',
                ),
                isThreeLine: true,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => HistoryDetailPage(attendance: a),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
