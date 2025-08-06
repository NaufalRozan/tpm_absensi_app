import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tpm_absensi_app/models/attendance.dart';
import 'package:tpm_absensi_app/presentation/home/history/history_page.dart';
import 'package:tpm_absensi_app/services/location_service.dart';
import 'package:tpm_absensi_app/services/permission_service.dart';
import 'package:tpm_absensi_app/services/storage_service.dart';
import 'package:tpm_absensi_app/widgets/app_snackbar.dart';

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
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _loadTodayStatus();
    _checkLocation();
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() => _now = DateTime.now());
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
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

    AppSnackBar.show(
      context,
      message: 'Absensi berhasil',
      type: AppSnackBarType.success,
    );
  }

  @override
  Widget build(BuildContext context) {
    final nowStr = _now.toLocal().toString().split('.').first;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('Absensi', style: TextStyle(color: Colors.white)),
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
            padding: const EdgeInsets.all(16),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header: Avatar + Greeting
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.blue.shade100,
                          child: Text(
                            widget.userName.substring(0, 1).toUpperCase(),
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Hello, ${widget.userName}',
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Waktu
                    Row(
                      children: [
                        const Icon(Icons.access_time,
                            size: 20, color: Colors.grey),
                        const SizedBox(width: 8),
                        Text(nowStr,
                            style: const TextStyle(color: Colors.grey)),
                      ],
                    ),
                    const Divider(height: 32),

                    // Status Absensi
                    Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: _hasCheckedInToday
                              ? Colors.green.shade50
                              : Colors.red.shade50,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: _hasCheckedInToday
                                ? Colors.green.shade200
                                : Colors.red.shade200,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              _hasCheckedInToday
                                  ? Icons.check_circle
                                  : Icons.error,
                              color: _hasCheckedInToday
                                  ? Colors.green
                                  : Colors.red,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              _hasCheckedInToday
                                  ? 'Sudah Absen'
                                  : 'Belum Absen',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: _hasCheckedInToday
                                    ? Colors.green.shade800
                                    : Colors.red.shade800,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),

                    // Lat/Lng: shimmer jika null, atau tampilkan nilai
                    if (_latitude == null || _longitude == null) ...[
                      Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.grey.shade100,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Container(
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ] else ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey.shade400),
                              ),
                              child: Center(
                                child: Text(
                                  'Lat: ${_latitude!.toStringAsFixed(5)}',
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.grey.shade400),
                              ),
                              child: Center(
                                child: Text(
                                  'Lng: ${_longitude!.toStringAsFixed(5)}',
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                    const SizedBox(height: 12),

                    // Status lokasi masih seperti semula
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: _locationValid
                            ? Colors.green.shade50
                            : Colors.red.shade50,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: _locationValid
                              ? Colors.green.shade200
                              : Colors.red.shade200,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            _locationValid ? Icons.check : Icons.close,
                            size: 18,
                            color: _locationValid ? Colors.green : Colors.red,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            _locationValid ? 'Di Kantor' : 'Di Luar Kantor',
                            style: TextStyle(
                              fontSize: 14,
                              color: _locationValid
                                  ? Colors.green.shade800
                                  : Colors.red.shade800,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Foto Selfie
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade300),
                        image: _photoPath != null
                            ? DecorationImage(
                                image: FileImage(File(_photoPath!)),
                                fit: BoxFit.cover,
                              )
                            : null,
                      ),
                      child: _photoPath == null
                          ? const Center(
                              child: Icon(Icons.camera_alt,
                                  size: 48, color: Colors.grey),
                            )
                          : null,
                    ),

                    const SizedBox(height: 24),

                    // Tombol Ambil Selfie & Absen
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: _hasCheckedInToday ? null : _takePhoto,
                            icon: const Icon(Icons.camera_alt),
                            label: const Text('Ambil Selfie'),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
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
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: Text('Absen Sekarang'),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 4,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Lihat Riwayat
                    Center(
                      child: TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const HistoryPage(),
                          ),
                        ),
                        child: const Text('Lihat Riwayat'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
