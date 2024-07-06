//Text button
/*import 'package:flutter/material.dart';

void main() {
  runApp(const buttonEx());
}

class buttonEx extends StatelessWidget {
  const buttonEx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Button"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: TextButton(
            child: Text("Click me"),
            style: TextButton.styleFrom(
              backgroundColor: Colors.greenAccent,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}*/

//IconButton
/*import 'package:flutter/material.dart';

void main() {
  runApp(const buttonEx());
}

class buttonEx extends StatelessWidget {
  const buttonEx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Icon Button"),
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
        ),
        body: Center(
          child: IconButton(
            icon: Icon(Icons.favorite),
            iconSize: 40,
            color: Colors.red,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}*/

//Floating Action Button
/*import 'package:flutter/material.dart';

void main() {
  runApp(const buttonEx());
}

class buttonEx extends StatelessWidget {
  const buttonEx({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Floating Action Button"),
          centerTitle: true,
          backgroundColor: Colors.pink[500],
        ),
        body: Container(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}*/

//State management Textfield

/*import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScreen();
  }
}

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  String name = 'flutter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("home"),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Text(
              "Variable value is: $name",
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}*/

//onChange Textfield Update state value
/*import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScreen();
  }
}

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  var myTitle = "FLutter State example";
  var Myname = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to Home"),
        ),
        body: Column(
          children: [
            Text("$myTitle"),
            TextField(
              onChanged: (value) {
                setState(() {
                  Myname = value;
                });
                print(value);
              },
            ),
            Text(
              Myname,
              style: TextStyle(fontSize: 40),
            )
          ],
        ),
      ),
    );
  }
}*/

//show name onButton click
/*import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScreen();
  }
}

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(scaffoldBackgroundColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("welcome to Home"),
          backgroundColor: Colors.pink,
        ),
        body: Column(
          children: [
            Text(
              "$name",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name = "Hello Pariceema";
                });
              },
              child: Text("Click Me"),
            ),
          ],
        ),
      ),
    );
  }
}*/

//Counter example

/*import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScreen();
  }
}

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  int no1 = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(scaffoldBackgroundColor: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Welcome to home"),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            Text(
              "Value is:$no1",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  no1 = no1 + 1;
                });
              },
              child: Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}*/

// counter example using method
/*import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MyScreen();
  }
}

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});
  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  int no1 = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(scaffoldBackgroundColor: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: [
            Text(
              " Value is : $no1",
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  myprocess();
                },
                child: Text("Increment")),
          ],
        ),
      ),
    );
  }

// declare method for myprocess
  void myprocess() {
    setState(() {
      no1 = no1 + 1;
    });
  }
}*/

// Even Odd Example
/*import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MyScreen();
  }
}

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});
  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  int no1 = 1;
  String ans = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(scaffoldBackgroundColor: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Even/Odd"),
          backgroundColor: Colors.grey,
        ),
        body: Column(
          children: [
            Text(
              " Value is : $no1",
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              "$ans",
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  myprocess();
                },
                child: Text("Click Me")),
          ],
        ),
      ),
    );
  }

  void myprocess() {
    setState(() {
      no1 = no1 + 1;
    });
    if (no1 % 2 == 0) {
      setState(() {
        ans = "Even";
      });
    } else {
      setState(() {
        ans = "Odd";
      });
    }
  }
}*/

//Toggle

/*import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScreen();
  }
}

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  bool is_visible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Toggle button"),
          backgroundColor: Colors.red,
        ),
        body: Column(children: [
          Text(is_visible ? "True" : "False"),
          ElevatedButton(
              onPressed: (() {
                setState(() {
                  is_visible = !is_visible;
                });
              }),
              child: Text(is_visible ? "Click to False" : "Click to True")),
        ]),
      ),
    );
  }
}*/

//Text change
/*import 'package:flutter/material.dart';

void main() {
  runApp(const textEx());
}

class textEx extends StatefulWidget {
  const textEx({super.key});

  @override
  State<textEx> createState() => _textExState();
}

class _textExState extends State<textEx> {
  String textString = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.amber[100],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Example"),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Text(
              'Flutter App',
              style: TextStyle(fontSize: 25),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Enter Name"),
              onChanged: (text) {
                _changeContent(text);
              },
            ),
            Text(
              textString,
            ),
          ],
        ),
      ),
    );
  }

  void _changeContent(String text) {
    setState(() {
      textString = text;
    });
  }
}*/

//Text value
/*import 'package:flutter/material.dart';

void main() {
  runApp(const textEx());
}

class textEx extends StatefulWidget {
  const textEx({super.key});

  @override
  State<textEx> createState() => _textExState();
}

class _textExState extends State<textEx> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.amber[100],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Text Example"),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Text(
              'Flutter App',
              style: TextStyle(fontSize: 25),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
            Text("Text is:$name"),
          ],
        ),
      ),
    );
  }
}*/

//Text on button click
/*import 'package:flutter/material.dart';

void main() {
  runApp(const textonclick());
}

class textonclick extends StatelessWidget {
  const textonclick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return textEx();
  }
}

class textEx extends StatefulWidget {
  const textEx({Key? key}) : super(key: key);
  @override
  State<textEx> createState() => _textExState();
}

class _textExState extends State<textEx> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text on button click',
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Flutter Data"),
            backgroundColor: Colors.blueGrey,
          ),
          body: Column(
            children: [
              const Text(
                "Flutter App",
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: "Enter name:",
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("click event Fired..");
                  },
                  child: const Text("Click Me")),
              const Text(
                "Hello Dart",
              ),
            ],
          )),
    );
  }
}*/

//Onsubmit value print
/*import 'package:flutter/material.dart';

void main() {
  runApp(const textonclick());
}

class textonclick extends StatelessWidget {
  const textonclick({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return textEx();
  }
}

class textEx extends StatefulWidget {
  const textEx({Key? key}) : super(key: key);
  @override
  State<textEx> createState() => _textExState();
}

class _textExState extends State<textEx> {
  String _textString = "";
  String _tempString = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Flutter Demo"),
          ),
          body: Column(
            children: [
              const Text(
                "Flutter App",
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                  decoration: const InputDecoration(
                    labelText: "Enter name",
                  ),
                  onChanged: (text) {
                    _changeContent(text);
                  }),
              ElevatedButton(
                  onPressed: () {
                    _showContent();
                  },
                  child: const Text('click me')),
              Text(
                _textString,
                style: const TextStyle(fontSize: 25),
              ),
            ],
          )),
    );
  }

  _changeContent(String text) {
    setState(() {
      _tempString = text;
    });
  }

  _showContent() {
    setState(() {
      _textString = _tempString;
    });
  }
}*/
