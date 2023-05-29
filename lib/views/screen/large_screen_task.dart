import 'package:flutter/material.dart';
import 'package:todo_app/data/task_list.dart';

class LargeScreenTask extends StatelessWidget {
  const LargeScreenTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Large Task Screen",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: const [
              SizedBox(
                height: 10,
              ),
              Text("Go To Screen One"),
              SizedBox(
                height: 10,
              ),
              Text("Go To Screen Two"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: tasks
                .map((e) => Card(
                      child: Container(
                        width: 300,
                        color: Colors.yellow[100],
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(e.name),
                            const Icon(Icons.check_circle),
                          ],
                        ),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
