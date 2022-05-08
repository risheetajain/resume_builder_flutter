import 'package:flutter/material.dart';

class AddContent extends StatefulWidget {
  const AddContent({Key? key}) : super(key: key);

  @override
  State<AddContent> createState() => _AddContentState();
}

class _AddContentState extends State<AddContent> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextFormField(
        decoration: const InputDecoration(
          labelText: 'Title',
        ),
      ),
      TextFormField(
        decoration: const InputDecoration(
          labelText: 'Description',
        ),
      )
    ]);
  }
}
