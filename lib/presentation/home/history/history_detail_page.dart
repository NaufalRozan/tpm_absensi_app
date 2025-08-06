import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:tpm_absensi_app/models/attendance.dart';

class HistoryDetailPage extends StatelessWidget {
  final Attendance attendance;
  const HistoryDetailPage({
    Key? key,
    required this.attendance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ts = attendance.timestamp.toLocal().toString().split('.').first;
    final lat = attendance.latitude;
    final lng = attendance.longitude;

    return Scaffold(
      appBar: AppBar(title: const Text('Detail Absensi')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Peta
            SizedBox(
              height: 300,
              child: FlutterMap(
                options: MapOptions(
                  initialCenter: LatLng(lat, lng),
                  initialZoom: 16,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                    subdomains: const ['a', 'b', 'c'],
                  ),
                  MarkerLayer(
                    markers: [
                      Marker(
                        point: LatLng(lat, lng),
                        width: 80,
                        height: 80,
                        child: const Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Waktu     : $ts'),
                  const SizedBox(height: 4),
                  Text(
                      'Status    : ${attendance.locationValid ? "Valid" : "Tidak valid"}'),
                  const SizedBox(height: 4),
                  Text(
                      'Koordinat : (${lat.toStringAsFixed(5)}, ${lng.toStringAsFixed(5)})'),
                ],
              ),
            ),

            const SizedBox(height: 16),
            // Foto lengkap
            if (attendance.photoPath.isNotEmpty)
              Center(
                child: Image.file(
                  File(attendance.photoPath),
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
