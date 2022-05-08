import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List myResumeOption = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ReorderableListView.builder(
          itemCount: myResumeOption.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(Icons.drag_handle),
                title: Column(children: <Widget>[
                  TextFormField(
                    initialValue: myResumeOption[index]["title"],
                    decoration: const InputDecoration(
                      labelText: 'Title',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Description',
                    ),
                  )
                ]),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                ));
          },
          onReorder: (int oldIndex, int newIndex) {},
        ),
        TextButton(onPressed: () {}, child: const Text('Add Content')),
      ],
    ));
  }
}
