//Controller App

/*import 'package:flutter/material.dart';

void main() {
  runApp(const textEx());
}

class textEx extends StatefulWidget {
  const textEx({Key? key}) : super(key: key);

  @override
  State<textEx> createState() => _textExState();
}

class _textExState extends State<textEx> {
  String myText = "";
  TextEditingController txt1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("COntroller App"),
        ),
        body: Column(
          children: [
            const Text(
              'Flutter App',
              style: TextStyle(fontSize: 25),
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Enter Ur Name"),
              controller: txt1,
            ),
            ElevatedButton(
              onPressed: () {
                _showContent();
              },
              child: Text("Click me"),
            ),
            Text(
              myText,
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }

  void _showContent() {
    print("text is ${txt1.text}");
    setState(() {
      myText = txt1.text;
    });
  }
}*/

//Year is Leap Or Not...
/*import 'dart:html';
import 'package:flutter/material.dart';

void main() {
  runApp(const textEx());
}

class textEx extends StatefulWidget {
  const textEx({Key? key}) : super(key: key);

  @override
  State<textEx> createState() => _textExState();
}

class _textExState extends State<textEx> {
  String myText = "";
  TextEditingController txt1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Leap Year"),
        ),
        body: Column(
          children: [
            const Text(
              'flutter app',
              style: TextStyle(fontSize: 25),
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'enter year'),
              controller: txt1,
            ),
            ElevatedButton(
              onPressed: () {
                _showContent();
              },
              child: Text("Click"),
            ),
            Text(
              myText,
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }

  void _showContent() {
    var year = int.parse(txt1.text);
    if (year % 100 == 0 && year % 400 == 0) {
      setState(() {
        myText = "Year is Leap year";
      });
    } else if (year % 4 == 0) {
      setState(() {
        myText = "year is leap year";
      });
    } else {
      setState(() {
        myText = "Year is not leap year";
      });
    }
  }
}*/

//Sum of NO
/*import 'package:flutter/material.dart';

void main() {
  runApp(const sumofno());
}

class sumofno extends StatefulWidget {
  const sumofno({super.key});

  @override
  State<sumofno> createState() => _sumofnoState();
}

class _sumofnoState extends State<sumofno> {
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  String myText = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sum',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Fluter App'),
          ),
          body: Column(
            children: [
              const Text(
                'sum Example',
                style: TextStyle(fontSize: 25),
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Enter 1st no',
                ),
                controller: txt1,
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Enter 2nd no',
                ),
                controller: txt2,
              ),
              ElevatedButton(
                  onPressed: () {
                    _showContent();
                  },
                  child: const Text("Click")),
              Text(
                myText,
                style: const TextStyle(fontSize: 25),
              ),
            ],
          )),
    );
  }

  void _showContent() {
    var no1 = int.parse(txt1.text);
    var no2 = int.parse(txt2.text);

    var c = no2 + no1;
    setState(() {
      myText = "sum is ${c}";
    });
  }
}*/

//Simple calculator

/*import 'package:flutter/material.dart';

void main() {
  runApp(const calculator());
}

class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  String myText = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(scaffoldBackgroundColor: Colors.blueGrey),
      title: 'calculator',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter App'),
            backgroundColor: Colors.lime,
            titleTextStyle:
                TextStyle(fontSize: 50, fontStyle: FontStyle.italic),
          ),
          body: Column(
            children: [
              const Text(
                'Calculator Example',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Enter 1st no',
                ),
                controller: txt1,
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Enter 2nd no',
                ),
                controller: txt2,
              ),
              ElevatedButton(
                  onPressed: () {
                    add();
                  },
                  child: const Text('+')),
              ElevatedButton(
                  onPressed: () {
                    sub();
                  },
                  child: const Text('-')),
              ElevatedButton(
                  onPressed: () {
                    mul();
                  },
                  child: const Text('*')),
              ElevatedButton(
                  onPressed: () {
                    div();
                  },
                  child: const Text('/')),
              ElevatedButton(
                  onPressed: () {
                    mod();
                  },
                  child: const Text('%')),
              Text(
                myText,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }

  void add() {
    var no1 = int.parse(txt1.text);
    var no2 = int.parse(txt2.text);
    var c = no2 + no1;

    setState(() {
      myText = "sum is $c";
    })
  }

  void sub() {
    var no1 = int.parse(txt1.text);
    var no2 = int.parse(txt2.text);
    var c = no2 - no1;

    setState(() {
      myText = "difference is $c";
    });
  }

  void mul() {
    var no1 = int.parse(txt1.text);
    var no2 = int.parse(txt2.text);
    var c = no2 * no1;

    setState(() {
      myText = "multiplication is $c";
    });
  }

  void div() {
    var no1 = int.parse(txt1.text);
    var no2 = int.parse(txt2.text);
    var c = no2 / no1;

    setState(() {
      myText = "division is $c";
    });
  }

  void mod() {
    var no1 = int.parse(txt1.text);
    var no2 = int.parse(txt2.text);
    var c = no2 % no1;

    setState(() {
      myText = "modulous is $c";
    });
  }
}*/

//Image
/*import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(image_code());
}

class image_code extends StatefulWidget {
  const image_code({super.key});

  @override
  State<image_code> createState() => _image_codeState();
}

class _image_codeState extends State<image_code> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image code',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter image code"),
          backgroundColor: Colors.lime,
        ),
        body: Column(
          children: <Widget>[
            const Text(
              "Image",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            //Image.asset("assets/images/Peacock.jpg", width: 500, height: 300),
            Image.network(
              'https://tse1.mm.bing.net/th/id/OIP.nv9g-1pv95SNmT7Lsj26HwHaE7?rs=1&pid=ImgDetMain',
              // repeat: ImageRepeat.repeat,
              color: Colors.amber.withOpacity(1.0),
              colorBlendMode: BlendMode.colorBurn,
            ),
          ],
        ),
      ),
    );
  }
}*/

//Repeat
/*import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Tutorial';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(20),
            child: const Image(
              width: 400,
              height: 250,
              //repeat: ImageRepeat.repeat,
              image: NetworkImage(
                  'https://tse1.mm.bing.net/th/id/OIP.OJxV95CWU3tM-UDgStfijgHaKz?w=878&h=1280&rs=1&pid=ImgDetMain'),
            ),
          ),
        ],
      ),
    );
  }
}*/

//ROunded corners
/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Image'),
        ),
        body: Center(
          child: Container(
            color: Colors.cyan,
            width: double.infinity,
            child: Column(children: <Widget>[
              Container(
                width: 200,
                margin: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: NetworkImage(
                        'https://tse4.mm.bing.net/th/id/OIP.k1IWVprz50qonuvqUCPmqwHaFX?rs=1&pid=ImgDetMain'),
                  ),
                ),
              ),
              Container(
                width: 200,
                margin: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image(
                    image: NetworkImage(
                        'https://tse4.mm.bing.net/th/id/OIP.k1IWVprz50qonuvqUCPmqwHaFX?rs=1&pid=ImgDetMain'),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}*/

//ROunded Image

/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Image'),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            width: double.infinity,
            child: Column(children: <Widget>[
              Container(
                height: 200,
                width: 200,
                margin: EdgeInsets.all(40),
                child: Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1692348372809-215340ab4b89?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: 150,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1692348372809-215340ab4b89?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                      fit: BoxFit.fill),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}*/

//Using file from device
/*import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.tealAccent),
      home: const MultipleImageSelector(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MultipleImageSelector extends StatefulWidget {
  const MultipleImageSelector({super.key});

  @override
  State<MultipleImageSelector> createState() => _MultipleImageSelectorState();
}

class _MultipleImageSelectorState extends State<MultipleImageSelector> {
  List<File> selectedImages = [];
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multiple Images select"),
        backgroundColor: Colors.blue,
        actions: const [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              child: const Text('select Image form gallery and camera'),
              onPressed: () {
                getImages();
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0),
              child: Text(
                "Gallery Image",
                textScaleFactor: 3,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: 300.0,
                child: selectedImages.isEmpty
                    ? const Center(child: Text('Sorry nothing selected!!'))
                    : GridView.builder(
                        itemCount: selectedImages.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                              child: kIsWeb
                                  ? Image.network(selectedImages[index].path)
                                  : Image.file(selectedImages[index]));
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future getImages() async {
    final pickedFile = await picker.pickMultiImage(
        imageQuality: 100, maxHeight: 1000, maxWidth: 1000);
    List<XFile> xfilePick = pickedFile;

    setState(
      () {
        if (xfilePick.isNotEmpty) {
          for (var i = 0; i < xfilePick.length; i++) {
            selectedImages.add(File(xfilePick[i].path));
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }
}*/

//Another code Image
/*import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.pink),
      home: const MultipleImageSelector(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MultipleImageSelector extends StatefulWidget {
  const MultipleImageSelector({super.key});

  @override
  State<MultipleImageSelector> createState() => _MultipleImageSelectorState();
}

class _MultipleImageSelectorState extends State<MultipleImageSelector> {
  List<File> selectedImages = [];
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    // display image selected from gallery

    return Scaffold(
      appBar: AppBar(
        title: const Text('File image select'),
        backgroundColor: Colors.blueGrey,
        actions: const [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.white)),
              child: const Text('Select File Image'),
              onPressed: () {
                getImages();
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0),
              child: Text(
                "Select Multiple Image from file",
                // ignore: deprecated_member_use
                textScaleFactor: 3,
                style: TextStyle(color: Colors.blueGrey),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: 300.0,
                child: selectedImages.isEmpty
                    ? const Center(child: Text('Sorry nothing selected!!'))
                    : GridView.builder(
                        itemCount: selectedImages.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                              child: kIsWeb
                                  ? Image.network(
                                      selectedImages[index].path,
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.fill,
                                      alignment: Alignment.center,
                                    )
                                  : Image.file(
                                      selectedImages[index],
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.fill,
                                      alignment: Alignment.center,
                                    ));
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future getImages() async {
    final pickedFile = await picker.pickMultiImage(
        requestFullMetadata: true,
        imageQuality: 100,
        maxHeight: 1000,
        maxWidth: 1000);
    List<XFile> xfilePick = pickedFile;

    setState(
      () {
        if (xfilePick.isNotEmpty) {
          for (var i = 0; i < xfilePick.length; i++) {
            selectedImages.add(File(xfilePick[i].path));
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(// is this context <<<
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }
}*/

//Text ON iMAGE
/*import 'package:flutter/material.dart';

void main() {
  runApp(const textonimage());
}

class textonimage extends StatelessWidget {
  const textonimage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return textimage();
  }
}

class textimage extends StatefulWidget {
  const textimage({Key? key}) : super(key: key);

  @override
  State<textimage> createState() => _textimageState();
}

class _textimageState extends State<textimage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Peacock..."),
          ),
          body: Stack(
            children: [
              Container(
                child: Image.asset(
                  "assets/images/Peacock.jpg",
                  alignment: Alignment.center,
                ),
              ),
              Container(
                  alignment: Alignment.topCenter,
                  child: const Text(
                    "Yo...",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      // backgroundColor: Colors.indigo,
                    ),
                  ))
            ],
          )),
    );
  }
}*/

//Two State
/*import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      title: "App",
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Click to Navigate..."),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: const Text("Back"),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}*/

//Three state
/*import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      title: "App",
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Click to Navigate..."),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: const Text("Third Route"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ThirdRoute()),
              );
            }),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Route'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.white,
            ),
            child: const Text("Back"),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}*/

//Push Named Method
/*import 'dart:js';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "App",
      home: MyApp(),
      initialRoute: "Home",
      routes: {
        "Home": (context) => const MyApp(),
        "Second": (context) => const SecondRoute(),
        "Third": (context) => const ThirdRoute(),
      },
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Route"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Click to navigate"),
          onPressed: () {
            Navigator.pushNamed(context, 'Second');
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Route"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          child: const Text("Third Route"),
          onPressed: () {
            Navigator.pushNamed(context, 'Third');
          },
        ),
      ),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Route"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
          child: const Text("Back"),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
    );
  }
}*/

//Push Replacement Named Method

/*import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "App",
      home: MyApp(),
      initialRoute: "Home",
      routes: {
        "Home": (context) => const MyApp(),
        "Second": (context) => const SecondRoute(),
        "Third": (context) => const ThirdRoute(),
      },
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
// This widget is the root of your application. @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Route'),
        backgroundColor: Color.fromARGB(255, 44, 9, 245),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 5, 29, 250),
            foregroundColor: Color.fromARGB(255, 188, 197, 236),
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, 'Second');
          },
          child: const Text("Click to Navigate..."),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Route'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(children: [
            const SizedBox(height: 50),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 243, 17, 1),
                  foregroundColor: Color.fromARGB(255, 241, 200, 200),
                ),
                child: const Text("Third Route"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'Third');
                }),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 243, 17, 1),
                  foregroundColor: Color.fromARGB(255, 241, 200, 200),
                ),
                child: const Text("Back to First Route"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'Home');
                }),
          ]),
        ));
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Third Route'),
          backgroundColor: Colors.yellow,
        ),
        body: Center(
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                foregroundColor: Colors.blue,
              ),
              child: const Text("Back"),
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'Second');
              }),
        ));
  }
}*/

/*import 'package:flutter/material.dart';
import 'Second.dart';
import 'Third.dart';

void main() => runApp(MaterialApp(
      title: "App",
      home: MyApp(),
      initialRoute: "Home",
      routes: {
        "Home": (context) => const MyApp(),
        "Second": (context) => const SecondRoute(),
        "Third": (context) => const ThirdRoute(),
      },
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home Route"),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('click to navigate......'),
            onPressed: () {
              Navigator.pushNamed(context, 'Second');
            },
          ),
        ),
      ),
    );
  }
}*/

//Pass data between screen with constructor

/*import 'package:flutter/material.dart';
import 'Second.dart';
import 'Third.dart';

void main() => runApp(MaterialApp(
      title: "App",
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Home Route"),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          SecondRoute(mytxt1: "Flutter", mytxt2: "Course")));
            },
            child: const Text('click to navigate......'),
          ),
        ),
      ),
    );
  }
}*/

//Pass data dynamic

/*import 'package:flutter/material.dart';
import 'Second.dart';

void main() => runApp(MaterialApp(
      title: "App",
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController txcon1 = new TextEditingController();
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Home Route"),
      ),
      body: Column(
        children: [
          TextField(
            controller: txcon1,
          ),
          Center(
            child: ElevatedButton(
              child: const Text("Pass Data"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            SecondRoute(mytxt1: txcon1.text)));
              },
            ),
          ),
        ],
      ),
    ));
  }
}*/

//Passing data with route settings
/*import 'package:flutter/material.dart';
import 'Second.dart';

void main() => runApp(MaterialApp(
      title: "App",
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController txcon1 = new TextEditingController();
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Home Route"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          TextField(
            controller: txcon1,
          ),
          Center(
            child: ElevatedButton(
              child: const Text("Pass Data"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondRoute(),
                      settings: RouteSettings(
                        arguments: txcon1.text,
                      ),
                    ));
              },
            ),
          ),
        ],
      ),
    ));
  }
}*/

//Exa on/off switch

/*import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool is_onoff = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
        backgroundColor: Colors.brown,
      ),
      body: Row(children: [
        Switch(
          value: is_onoff,
          activeColor: Colors.green,
          activeTrackColor: Colors.blue,
          inactiveThumbColor: Colors.amber,
          inactiveTrackColor: Colors.red,
          onChanged: (value) {
            setState(() {
              is_onoff = value;
            });
          },
        ),
        Text("$is_onoff"),
      ]),
    );
  }
}*/
