import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ToDoApp",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shopping List"),
        ),
        body: const ScaffoldBody(),
      ),
    );
  }
}

class ScaffoldBody extends StatefulWidget {
  const ScaffoldBody({Key? key});

  @override
  State<ScaffoldBody> createState() => _ScaffoldBodyState();
}

class _ScaffoldBodyState extends State<ScaffoldBody> {
  TextEditingController t1 = TextEditingController();
  List shoppingList = [];

  addItem() {
    setState(() {
      shoppingList.add(t1.text);
      t1.clear();
    });
  }

  removeItem() {
    setState(() {
      shoppingList.remove(t1.text);
      t1.clear();
    });
  }

  removeAll() {
    setState(() {
      shoppingList.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: ListView.builder(
            itemCount: shoppingList.length,
            itemBuilder: (context, index) => ListTile(
              subtitle: const Text("Shopping Items"),
              title: Text(shoppingList[index]),
            ),
          ),
        ),
        TextField(
          controller: t1,
        ),
        ElevatedButton(onPressed: addItem, child: const Text("Add")),
        ElevatedButton(onPressed: removeItem, child: const Text("Remove")),
        ElevatedButton(onPressed: removeAll, child: const Text("Remove All")),
      ],
    );
  }
}
