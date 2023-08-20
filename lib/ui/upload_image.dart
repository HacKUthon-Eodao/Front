import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:async';

class UploadImage extends StatefulWidget {
  const UploadImage({super.key});

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  XFile? _image;
  final ImagePicker _picker = ImagePicker();

  Future getImage(ImageSource imageSource) async {
    var status = await Permission.photos.status;
    if (status.isGranted) {
      final XFile? pickedFile = await _picker.pickImage(source: imageSource);
      if (pickedFile != null) {
        setState(() {
          _image = XFile(pickedFile.path);
        });
      }
    }

    if (status.isDenied) {
      var requestStatus = await Permission.photos.request();
      if (requestStatus.isGranted) {
        final XFile? pickedFile = await _picker.pickImage(source: imageSource);
        if (pickedFile != null) {
          setState(() {
            _image = XFile(pickedFile.path);
          });
        }
      }

      if (requestStatus.isPermanentlyDenied) {
        await openAppSettings();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        child: _image == null
            ? SizedBox(
                width: 200,
                height: 200,
                child: ElevatedButton(
                  child: const Text("갤러리"),
                  onPressed: () {
                    getImage(ImageSource.gallery);
                  },
                ))
            : SizedBox(
                child: Image.file(File(_image!.path)),
              ));
  }
}
