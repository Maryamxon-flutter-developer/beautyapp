import 'package:flutter/material.dart';
import 'forgot_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 36),
                const Text(
                  "Log in",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rochester',
                  ),
                ),
                const SizedBox(height: 32),
                const Text(
                  "Telefon raqamingizni kiriting",
                  style: TextStyle(
                    fontSize: 23,
                    fontFamily: 'Rochester',
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Telefon raqam",
                    hintStyle: const TextStyle(fontFamily: 'Rochester'),
                    suffixIcon: const Icon(Icons.phone, color: Color.fromARGB(255, 76, 76, 76)),
                    filled: true,
                    fillColor: Colors.white,
                    isDense: true, // Qo'shildi
                    contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Kichikroq qiymat
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(fontFamily: 'Rochester'),
                ),
                const SizedBox(height: 18),
                const Text(
                  "Parol kiriting",
                  style: TextStyle(
                    fontSize: 23,
                    fontFamily: 'Rochester',
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  obscureText: _obscure,
                  decoration: InputDecoration(
                    hintText: "Parol kiriting",
                    hintStyle: const TextStyle(fontFamily: 'Rochester'),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(
                            _obscure ? Icons.visibility_off : Icons.visibility,
                            color: const Color.fromARGB(255, 40, 40, 40),
                          ),
                          onPressed: () {
                            setState(() {
                              _obscure = !_obscure;
                            });
                          },
                        ),
                      ],
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    isDense: true, // Qo'shildi
                    contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16), // Kichikroq qiymat
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: const TextStyle(fontFamily: 'Rochester'),
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const ForgotPasswordPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "parolingizni unutdingizmi?",
                      style: TextStyle(
                        color: Color.fromARGB(255, 52, 66, 174),
                        fontSize: 13,
                        decoration: TextDecoration.underline,
                        fontFamily: '',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE53935),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "TASDIQLASH",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        letterSpacing: 1,
                        fontFamily: '',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: const [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        "Or",
                        style: TextStyle(
                          color: Colors.black54,
                          fontFamily: 'Rochester',
                        ),
                      ),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                const SizedBox(height: 18),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.g_mobiledata, color: Colors.red, size: 28),
                    label: const Text(
                      "google bilan kiring",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        // fontFamily: 'Rochester', // olib tashlandi
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF2F2F2),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.facebook, color: Colors.blue, size: 28),
                    label: const Text(
                      "facebook bilan kiring",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                        // fontFamily: 'Rochester', // olib tashlandi
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF2F2F2),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}