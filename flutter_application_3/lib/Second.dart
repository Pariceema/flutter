/*import 'package:flutter/material.dart';

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
              Navigator.pushNamed(context, "Third");
            }),
      ),
    );
  }
}*/

//Pass data between screen with constructor

/*import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key, required this.mytxt1, required this.mytxt2});

  final String mytxt1;
  final String mytxt2;

  @override
  Widget build(BuildContext content) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Route'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                mytxt1,
                style: TextStyle(fontSize: 30),
              ),
              Text(
                mytxt2,
                style: TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(content);
                  },
                  child: Text("Back"))
            ],
          ),
        ));
  }
}*/

//Pass data dynamic

/*import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key, required this.mytxt1});
  final String mytxt1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Route'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                mytxt1,
                style: const TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Back"),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ));
  }
}*/

//Passing data with route settings

/*import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final mydata = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second Route'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                mydata,
                style: const TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Back"),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          ),
        ));
  }
}*/
