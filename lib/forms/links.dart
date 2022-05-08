import 'package:flutter/material.dart';

class Links extends StatelessWidget {
  const Links({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Links'),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Social Media Name',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Url',
          ),
        ),
      ],
    );
  }
}
