import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IDCardPage(),
    );
  }
}

class IDCardPage extends StatelessWidget {
  const IDCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F2F7),
      appBar: AppBar(
        title: const Text('Digital ID Card'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 0,
      ),

      body: Center(
        child: Card(
          elevation: 5,
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 16,
                    right: 16, bottom: 12,
                ),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('assets/profile.png'),
                    ),

                    const SizedBox(height: 12),

                    const Text('Md. Emad Uddin Khan Sahabi',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),

                    const SizedBox(height: 4),

                    const Text('Batch: 62nd, Department of CSE',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              const Divider(
                thickness: 1.0,
                height: 1,
                color: Color(0xFFE0E0E0),
              ),

              Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, bottom: 16, top: 8,
                ),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity.compact,
                      leading: const Icon(
                          Icons.perm_identity,
                          size: 22,
                          color: Colors.black87,
                      ),
                      title: const Text('ID',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                          )
                      ),
                      subtitle: const Text('2320012101332',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                          )
                      ),
                    ),

                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity.compact,
                      leading: const Icon(
                          Icons.email,
                          size: 22,
                          color: Colors.black87,
                      ),
                      title: const Text('Email',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                          )
                      ),
                      subtitle: const Text('Sahabikhan@gmail.com',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                          )
                      ),
                    ),

                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity.compact,
                      leading: const Icon(
                          Icons.phone,
                          size: 22,
                          color: Colors.black87,
                      ),

                      title: const Text('Phone',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                          )
                      ),

                      subtitle: const Text('+8801770271034',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}