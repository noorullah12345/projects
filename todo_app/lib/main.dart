import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter To do app ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => HomePage();
}

class HomePage extends State<MyHomePage> {
  void addText() {
    TextEditingController controller = TextEditingController();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('New tasks'),
            content: TextField(
              controller: controller,
            ),
            actions: [
              MaterialButton(
                onPressed: () {
                  setState(
                    () {
                      tasks.add(controller.text);
                      controller.clear();
                      Navigator.of(context).pop();
                    },
                  );
                },
                child: Text('Add'),
              )
            ],
          );
        });
  }

  List<String> tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To do app'),
      ),
      body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(tasks[index]),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addText();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
