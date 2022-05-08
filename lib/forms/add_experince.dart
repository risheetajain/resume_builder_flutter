import 'package:flutter/material.dart';

class AddExperince extends StatefulWidget {
  const AddExperince({Key? key}) : super(key: key);

  @override
  State<AddExperince> createState() => _AddExperinceState();
}

class _AddExperinceState extends State<AddExperince> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextFormField(
        decoration: const InputDecoration(
          labelText: 'Position',
        ),
      ),
      TextFormField(
        decoration: const InputDecoration(
          labelText: 'Company Name',
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
        decoration: const InputDecoration(
          labelText: 'Roles and Responsibility',
        ),
      ),
    ]);
  }
}
