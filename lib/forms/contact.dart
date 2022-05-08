import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/const.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({Key? key}) : super(key: key);

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  File? profileImage;
  Map editData = {};
  bool isEdit = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Contact Details'),
        InkWell(
          onTap: () async {
            profileImage = await getImage();
            setState(() {});
          },
          child: Center(
            child: SizedBox(
              height: 100,
              width: 100,
              child: isEdit
                  ? Image.network(
                      editData["Profile Image"],
                      fit: BoxFit.cover,
                    )
                  : profileImage == null
                      ? Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: greenColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                              child: Text(
                            " Upload Image",
                            style: TextStyle(color: greenColor),
                          )),
                        )
                      : Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: greenColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          // child: widget.isEdit
                          //     ? Image.network(
                          //         widget.editData["Profile Image"]
                          //             .toString(),
                          //         fit: BoxFit.cover,
                          //       )
                          //     :
                          child: kIsWeb
                              ? Image.network(
                                  profileImage!.path,
                                  fit: BoxFit.fill,
                                )
                              : Image.file(
                                  profileImage!,
                                  height: 80,
                                  width: 80,
                                  fit: BoxFit.contain,
                                ),
                        ),
            ),
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Full Name',
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            labelText: 'Email',
          ),
        ),
        TextFormField(
            decoration: const InputDecoration(
          labelText: 'Phone Number',
        )),
      ],
    );
  }

  static Future<File?> getImage() async {
    ImagePicker imagePicker = ImagePicker();
    final image = await imagePicker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      return File(
        image.path,
      );
    } else {
      return null;
    }
  }
}
