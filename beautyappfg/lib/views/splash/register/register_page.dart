import 'package:flutter/material.dart';
import 'package:beautyappfg/login/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String selectedRole = '';
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Ro'yhatdan o'tish",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rochester',
                    color: Color(0xFFE53935),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  "Rolingizni tanlang:",
                  style: TextStyle(
                    fontFamily: 'Rochester',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedRole = 'mijoz';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: selectedRole == 'mijoz'
                              ? const Color(0xFFE53935)
                              : Colors.grey[200],
                          foregroundColor: selectedRole == 'mijoz'
                              ? Colors.white
                              : Colors.black87,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        child: const Text(
                          "Mijoz",
                          style: TextStyle(
                            fontFamily: 'Rochester',
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedRole = 'salon';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: selectedRole == 'salon'
                              ? const Color(0xFFE53935)
                              : Colors.grey[200],
                          foregroundColor: selectedRole == 'salon'
                              ? Colors.white
                              : Colors.black87,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        child: const Text(
                          "Salon egasi",
                          style: TextStyle(
                            fontFamily: 'Rochester',
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                const Text(
                  "Ismingiz",
                  style: TextStyle(
                    fontSize: 23,
                    fontFamily: 'Rochester',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  style: const TextStyle(fontFamily: 'Rochester'),
                  decoration: InputDecoration(
                    hintText: "Ism kiriting",
                    hintStyle: const TextStyle(fontFamily: 'Rochester'),
                    filled: true,
                    fillColor: Colors.grey[100],
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 20),
                    suffixIcon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  "Telefon raqamingiz",
                  style: TextStyle(
                    fontSize: 23,
                    fontFamily: 'Rochester',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  keyboardType: TextInputType.phone,
                  style: const TextStyle(fontFamily: 'Rochester'),
                  decoration: InputDecoration(
                    hintText: "+998 __ ___ __ __",
                    hintStyle: const TextStyle(fontFamily: 'Rochester'),
                    filled: true,
                    fillColor: Colors.grey[100],
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 20),
                    suffixIcon: const Icon(Icons.phone),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  "Parolingiz",
                  style: TextStyle(
                    fontSize: 23,
                    fontFamily: 'Rochester',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  obscureText: _isObscured,
                  style: const TextStyle(fontFamily: 'Rochester'),
                  decoration: InputDecoration(
                    hintText: "Parol kiriting",
                    hintStyle: const TextStyle(fontFamily: 'Rochester'),
                    filled: true,
                    fillColor: Colors.grey[100],
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 20),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscured
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: Colors.grey[600],
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscured = !_isObscured;
                        });
                      },
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (selectedRole.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Iltimos, rol tanlang!"),
                          ),
                        );
                      } else {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) => Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            backgroundColor: Colors.transparent,
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 0),
                              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset('images/colebration.webp', height: 120),
                                  const SizedBox(height: 24),
                                  const Text(
                                    "Tabriklaymiz",
                                    style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  const Text(
                                    "ro'yxatdan muvaffaqiyatli o'tdingiz!",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                      fontFamily: 'Poppins',
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 24),
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton.icon(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                        Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                            builder: (_) => const LoginPage(),
                                          ),
                                        );
                                      },
                                      icon: const Icon(Icons.login, color: Colors.white),
                                      label: const Text(
                                        "Log in sahifasiga o'tish",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xFFE53935),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(16)),
                                        ),
                                        padding: const EdgeInsets.symmetric(vertical: 16),
                                        elevation: 2,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE53935),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Ro'yxatdan o'tish",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
