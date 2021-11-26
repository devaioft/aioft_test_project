import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String routName = '/home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Aioft App"),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {

          return Column(
            children: [
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDGQO5-8CPA9Hzl5_wLkAf6VtlMw52q7IwRw&usqp=CAU'),
                ),
                title: Text("Hey,I am Using Aioft.. $index"),
                trailing: const Icon(Icons.more_vert),
              ),
                const Divider(),
            ],
          );
          
        },
      ),
    );
  }
}
