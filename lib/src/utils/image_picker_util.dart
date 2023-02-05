import 'package:image_picker/image_picker.dart';

enum getImageFrom {
  gallery,
  camera,
}

class ImagePickerUtil {
  static Future<XFile?> getImage(getImageFrom source) async {
    final pickedFile = await ImagePicker().pickImage(
      source: source == getImageFrom.camera
          ? ImageSource.camera
          : ImageSource.gallery,
      maxHeight: 1800,
      maxWidth: 1800,
    );
    return pickedFile;
  }
}
