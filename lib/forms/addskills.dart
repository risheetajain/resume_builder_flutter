import 'package:flutter/material.dart';

class AddSkills extends StatelessWidget {
  const AddSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text('Add Skills'),
      TextFormField(
        decoration: const InputDecoration(
          labelText: 'Skill',
        ),
      ),
      IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
      ElevatedButton(onPressed: () {}, child: const Text('Submit')),
    ]);
  }
}
