import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 140,
                color: const Color(0xffD8ADAD),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: constraints.maxWidth * 0.4,
                          height: 40,
                          color: const Color(0xffC4C4C4),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 12, 32, 12),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: constraints.maxWidth,
                          height: 40,
                          color: const Color(0xffA8D8AD),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 300,
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: 200,
                    color: const Color(0xffD8ADAD),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: constraints.maxWidth,
                          height: 40,
                          color: const Color(0xffA8D8AD),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 0,
                    left: constraints.maxWidth * 0.35,
                    child: Container(
                        height: 60, width: 200, color: const Color(0xffC4C4C4)))
              ]),
            ),
          ]),
        ),
      );
    });
  }
}
