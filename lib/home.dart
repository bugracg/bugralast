import 'package:flutter/material.dart';
import 'page1.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new ToDolist());
  }
}

// Giriş Ekranı
class ToDolist extends StatelessWidget {
  const ToDolist({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const CircleAvatar(
                  radius: 95.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/kayoze.jpg.jpg'),
                ),
                const Text(
                  'KAYOZE SAN.',
                  style: TextStyle(fontSize: 40.0),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Secondpage()));
                  },
                  child: const Text("SHOP 🛒🛒"),
                  // Button
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
