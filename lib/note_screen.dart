import 'package:flutter/material.dart';

void main() {
  runApp(const NoteScreen());
}

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(title: 'Notes'),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'NotePad',
          style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Search',
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 90.0,
                width: 500.0,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  color: Colors.cyan[100],
                  shadowColor: Colors.blue.withOpacity(0.3),
                  child: Column(children: <Widget>[
                    ListTile(
                      title: Text(
                        "Today's grocery list",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("June 26,2022 08:05 PM"),
                    ),
                  ]),
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                height: 90.0,
                width: 500.0,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  color: Colors.yellow[100],
                  shadowColor: Colors.yellow.withOpacity(0.3),
                  child: Column(children: <Widget>[
                    ListTile(
                      title: Text(
                        "Rich dad Poor dad quotes",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("June 22,2022 05:00 PM"),
                    ),
                  ]),
                ),
              )),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
