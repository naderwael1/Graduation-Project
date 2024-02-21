import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

//alow me to pick image from camira or a gallary
//xfile from dart team for file size or type ...
pickImage(ImageSource source) async {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _file = await _imagePicker.pickImage(source: source);
  if (_file != null) {
    return await _file.readAsBytes();
  }
  print("no image ");
}
