import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tmp_absensi_app/models/attendance.dart';
import 'package:tmp_absensi_app/presentation/home/history/history_page.dart';
import 'package:tmp_absensi_app/services/location_service.dart';
import 'package:tmp_absensi_app/services/permission_service.dart';
import 'package:tmp_absensi_app/services/storage_service.dart';

class AttendancePage extends StatefulWidget {
  final String userName;
  const AttendancePage({Key? key, required this.userName}) : super(key: key);

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  bool _locationValid = false;
  double? _latitude, _longitude;
  String? _photoPath;
  bool _hasCheckedInToday = false;
  DateTime _now = DateTime.now();

  @override
  void initState() {
    super.initState();
    _loadTodayStatus();
    _checkLocation();
  }

  Future<void> _loadTodayStatus() async {
    final list = await StorageService.getAll();
    final today = DateTime.now();
    final done = list.any((att) {
      final d = att.timestamp.toLocal();
      return d.year == today.year &&
          d.month == today.month &&
          d.day == today.day;
    });
    setState(() => _hasCheckedInToday = done);
  }

  Future<void> _checkLocation() async {
    await PermissionService.requestLocation();
    final pos = await LocationService.getCurrentPosition();
    final valid = LocationService.isWithinOffice(pos.latitude, pos.longitude);
    setState(() {
      _latitude = pos.latitude;
      _longitude = pos.longitude;
      _locationValid = valid;
    });
  }

  Future<void> _takePhoto() async {
    await PermissionService.requestCamera();
    final file = await ImagePicker().pickImage(source: ImageSource.camera);
    if (file != null) setState(() => _photoPath = file.path);
  }

  Future<void> _submit() async {
    if (!_locationValid || _photoPath == null || _hasCheckedInToday) return;

    final att = Attendance(
      timestamp: DateTime.now(),
      latitude: _latitude!,
      longitude: _longitude!,
      locationValid: _locationValid,
      photoPath: _photoPath!,
    );
    await StorageService.saveAttendance(att);

    setState(() {
      _hasCheckedInToday = true;
      _now = DateTime.now();
      _photoPath = null;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Absensi berhasil')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final nowStr = _now.toLocal().toString().split('.').first;

    return Scaffold(
      appBar: AppBar(title: const Text('Absensi')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('User: ${widget.userName}'),
            const SizedBox(height: 8),
            Text('Waktu: $nowStr'),
            const SizedBox(height: 8),
            Text(
              'Status absensi: ${_hasCheckedInToday ? "Sudah absen" : "Belum absen"}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: _hasCheckedInToday ? Colors.green : Colors.red,
              ),
            ),
            const SizedBox(height: 8),
            if (_latitude != null && _longitude != null)
              Text(
                'Lokasi: (${_latitude!.toStringAsFixed(5)}, '
                '${_longitude!.toStringAsFixed(5)})',
              ),
            const SizedBox(height: 4),
            Text('Lokasi valid: ${_locationValid ? "Ya" : "Tidak"}'),
            const SizedBox(height: 16),
            Center(
              child: _photoPath != null
                  ? Image.file(File(_photoPath!), height: 200)
                  : const Placeholder(fallbackHeight: 200),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: _hasCheckedInToday ? null : _takePhoto,
                    icon: const Icon(Icons.camera_alt),
                    label: const Text('Ambil Selfie'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (_locationValid &&
                            _photoPath != null &&
                            !_hasCheckedInToday)
                        ? _submit
                        : null,
                    child: const Text('Absen Sekarang'),
                  ),
                ),
              ],
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const HistoryPage()),
                ),
                child: const Text('Lihat Riwayat'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
