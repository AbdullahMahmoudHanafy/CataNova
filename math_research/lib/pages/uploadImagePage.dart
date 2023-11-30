import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';

Future<String> uploadFile(XFile imageFile) async {
  Dio dio = Dio();

  var url = "https://dlmodel-001-site1.btempurl.com/api/Model";

  var filePath = imageFile.path;
  var file = await MultipartFile.fromFile(filePath);

  var formData = FormData.fromMap({"image": file});

  try {
    var response = await dio.post(
      url,
      data: formData,
    );
    final responseBody = response.data.toString();
    print(response.data);
    return responseBody;
  } catch (e) {
    print("Error:$e");
    throw Error;
  }
}

Future<XFile?> selectImage() async {
  final ImagePicker _picker = ImagePicker();
  final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
  return image;
}

class UploadImagePage extends StatefulWidget {
  @override
  _UploadImagePageState createState() => _UploadImagePageState();
}

class _UploadImagePageState extends State<UploadImagePage> {
  String responseString = '';

  void processImage() async {
    XFile? image = await selectImage();
    if (image != null) {
      try {
        String response = await uploadFile(image);
        setState(() {
          responseString = response;
        });
      } catch (error) {}
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Scan Now'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: processImage,
              child: Text(
                'Select an image',
                style: TextStyle(fontSize: 18, color: Colors.orange),
              ),
            ),
            SizedBox(height: 20),
            if (responseString != "")
              Text(
                "Congratulations you have " + responseString,
                style: TextStyle(fontSize: 20),
              ),
          ],
        ),
      ),
    );
  }
}
