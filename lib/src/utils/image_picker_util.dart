import 'package:image_picker/image_picker.dart';

enum GetImageFrom {
  gallery,
  camera,
}

class ImagePickerUtil {
  static Future<XFile?> getImage(GetImageFrom source) async {
    final pickedFile = await ImagePicker().pickImage(
      source: source == GetImageFrom.camera
          ? ImageSource.camera
          : ImageSource.gallery,
      maxHeight: 1800,
      maxWidth: 1800,
    );
    return pickedFile;
  }
}
