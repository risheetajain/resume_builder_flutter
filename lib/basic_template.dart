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
      body: Column(
        children: [
          const Center(
            child: Text('Basic Template'),
          ),
          Row(
            children: [
              CircleAvatar(
                  child: Image.network("https://picsum.photos/250?image=9")),
              const SizedBox(width: 10),
              Column(
                children: const [
                  Text('Name'),
                  Text("Position"),
                  Text("Description")
                ],
              ),
              Column(
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
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    children: const [
                      Text("Skills"),
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
