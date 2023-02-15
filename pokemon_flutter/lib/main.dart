import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool _loading = false;

  void _animateLoading() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Column(
                children: const [
                  TextField(
                    decoration: InputDecoration(
                      hintText: "E-mail",
                    ),
                    obscureText: false,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                  color: Colors.blueAccent,
                  child: const Text(
                    "Login",
                    selectionColor: Colors.amber,
                  ),
                  onPressed: () async {
                    setState(() {
                      const CircularProgressIndicator(
                        color: Colors.red,
                      );
                    });
                    await Future.delayed(Duration(seconds: 3), () {
                      setState(() {
                        _loading = false;
                      });
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
