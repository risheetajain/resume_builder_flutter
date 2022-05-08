import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCourses extends StatefulWidget {
  const AddCourses({Key? key}) : super(key: key);

  @override
  State<AddCourses> createState() => _AddCoursesState();
}

class _AddCoursesState extends State<AddCourses> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text('Add Courses'),
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
      
    ]);
  }
}
