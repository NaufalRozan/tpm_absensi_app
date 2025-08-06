import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:intl/intl.dart'; // tambahkan
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
    final date = attendance.timestamp.toLocal();
    final dateStr = DateFormat('dd MMM yyyy, HH:mm:ss').format(date);
    final lat = attendance.latitude;
    final lng = attendance.longitude;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title:
            const Text('Detail Absensi', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF56CCF2), Color(0xFF2F80ED)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Peta dengan border radius
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: SizedBox(
                      height: 250,
                      width: double.infinity,
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
                                width: 40,
                                height: 40,
                                child: const Icon(Icons.location_on,
                                    color: Colors.red, size: 40),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Detail dalam Card
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Header
                          const Text(
                            'Informasi Absensi',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const Divider(height: 24),

                          // Waktu
                          Row(
                            children: [
                              const Icon(Icons.access_time,
                                  size: 20, color: Colors.grey),
                              const SizedBox(width: 8),
                              Text(dateStr,
                                  style: const TextStyle(fontSize: 16)),
                            ],
                          ),
                          const SizedBox(height: 12),

                          // Status lokasi
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            decoration: BoxDecoration(
                              color: attendance.locationValid
                                  ? Colors.green.shade50
                                  : Colors.red.shade50,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: attendance.locationValid
                                    ? Colors.green.shade200
                                    : Colors.red.shade200,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  attendance.locationValid
                                      ? Icons.check
                                      : Icons.close,
                                  color: attendance.locationValid
                                      ? Colors.green
                                      : Colors.red,
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  attendance.locationValid
                                      ? 'Valid'
                                      : 'Tidak valid',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: attendance.locationValid
                                        ? Colors.green.shade800
                                        : Colors.red.shade800,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 12),

                          // Koordinat
                          Row(
                            children: [
                              const Icon(Icons.map,
                                  size: 20, color: Colors.grey),
                              const SizedBox(width: 8),
                              Text(
                                '(${lat.toStringAsFixed(5)}, ${lng.toStringAsFixed(5)})',
                                style: const TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Foto selfie
                if (attendance.photoPath.isNotEmpty) ...[
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) => Dialog(
                            backgroundColor: Colors.black54,
                            insetPadding: const EdgeInsets.all(8),
                            child: GestureDetector(
                              onTap: () => Navigator.of(context).pop(),
                              child: InteractiveViewer(
                                panEnabled: true,
                                minScale: 0.5,
                                maxScale: 4.0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.file(
                                    File(attendance.photoPath),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 4,
                        clipBehavior: Clip.antiAlias,
                        child: Image.file(
                          File(attendance.photoPath),
                          width: double.infinity,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],

                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
