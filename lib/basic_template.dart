import 'package:flutter/material.dart';

class BasicTemplate extends StatefulWidget {
  const BasicTemplate({Key? key}) : super(key: key);

  @override
  State<BasicTemplate> createState() => _BasicTemplateState();
}

class _BasicTemplateState extends State<BasicTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const Center(
              child: Text('Basic Template'),
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: CircleAvatar(
                      child: Image.network(
                    "https://picsum.photos/250?image=9",
                    fit: BoxFit.cover,
                    height: 250,
                    width: 250,
                  )),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: const [
                      Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Position",
                      ),
                      Text("Description")
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.mail),
                          SizedBox(width: 10),
                          Text("Email")
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(Icons.phone),
                          SizedBox(width: 10),
                          Text("Phone")
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Table(
              children: [
                TableRow(children: [
                  Column(
                    children: [
                      const Text("Skills"),
                      SizedBox(
                        height: 100,
                        child: ReorderableListView.builder(
                          itemCount: 3,
                          itemBuilder: (BuildContext context, int index) {
                            return Text(
                              "$index",
                              key: Key("$index"),
                            );
                          },
                          onReorder: (int oldIndex, int newIndex) {},
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const Text("Educations"),
                      ListView(
                          shrinkWrap: true,
                          children: List.generate(
                            1,
                            ((index) => Column(
                                  children: const [
                                    Text("College"),
                                    Text("Degree"),
                                    Text("Description"),
                                  ],
                                )),
                          ))
                    ],
                  )
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
