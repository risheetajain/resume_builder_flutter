import 'package:flutter/material.dart';

class AddEducation extends StatefulWidget {
  const AddEducation({Key? key}) : super(key: key);

  @override
  State<AddEducation> createState() => _AddEducationState();
}

class _AddEducationState extends State<AddEducation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Add Education'),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Add Institution',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Course',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Description',
          ),
        ),
        InputDatePickerFormField(
          firstDate: DateTime(1950),
          lastDate: DateTime.now(),
          fieldLabelText: "Start Date",
        ),
        InputDatePickerFormField(
          firstDate: DateTime(1950),
          lastDate: DateTime.now(),
          fieldLabelText: "End Date",
        ),
        TextFormField(
            decoration: const InputDecoration(labelText: 'Percentage')),
      ],
    );
  }
}
