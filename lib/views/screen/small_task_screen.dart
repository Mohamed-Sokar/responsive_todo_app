import 'package:flutter/material.dart';
import 'package:todo_app/data/task_list.dart';

class SmallTaskScreen extends StatelessWidget {
  const SmallTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Small Task Screen",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              contentPadding: const EdgeInsets.all(15),
              title: Text(tasks[index].name),
              trailing: const Icon(Icons.check_circle),
            ),
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text("aboomarsokar"),
              accountEmail: Text("aboomarsokar@gmail.com"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Go To the first screen",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Go To the second screen",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38),
            ),
          ],
        ),
      ),
    );
  }
}
