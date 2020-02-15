import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyList()));

class MyList extends StatefulWidget {
  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<StatefulWidget> {
  List list = <String>['1', '2', '3'];
  int value = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
            child: Column(
                children: List<Widget>.generate(
                    list.length,
                        (index) => Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        list[index].toString(),
                        style: TextStyle(fontSize: 24, color: Colors.blue),
                      ),
                    )))),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            value++;
            list.add('$value');
          });
        },
      ),
    );
  }
}