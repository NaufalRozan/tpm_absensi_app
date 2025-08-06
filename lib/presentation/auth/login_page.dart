import 'package:flutter/material.dart';
import 'package:tmp_absensi_app/presentation/home/attendance_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static const _dummyEmail = 'admin@company.com';
  static const _dummyPassword = 'password123';

  final _formKey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  bool _obscure = true;

  void _onSubmit() {
    if (!_formKey.currentState!.validate()) return;

    final email = _emailCtrl.text.trim();
    final pass = _passCtrl.text;

    if (email == _dummyEmail && pass == _dummyPassword) {
      final username = email.split('@').first;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => AttendancePage(userName: username),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Email atau password salah')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Info akun dummy
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(bottom: 24),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Gunakan akun:\n'
                  'Email: admin@company.com\n'
                  'Password: password123',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),

              TextFormField(
                controller: _emailCtrl,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (v) {
                  if (v == null || v.isEmpty) return 'Email wajib diisi';
                  if (!v.contains('@')) return 'Email tidak valid';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passCtrl,
                obscureText: _obscure,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: Icon(
                        _obscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () => setState(() => _obscure = !_obscure),
                  ),
                ),
                validator: (v) {
                  if (v == null || v.isEmpty) return 'Password wajib diisi';
                  if (v.length < 6) return 'Minimal 6 karakter';
                  return null;
                },
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _onSubmit,
                  child: const Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
