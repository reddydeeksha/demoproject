import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:majorproj2/main.dart';
import 'package:majorproj2/objectdetection.dart';
import 'dart:io';
import 'package:tflite/tflite.dart';


void main() => runApp(Videostream());
class Videostream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> containers = [
    Container(
      child: MyImagePicker()
      ,
    ),
    Container(
       child: MyImagePicker1(),
    ),
    ];
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sign Language Video Recognition'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Camera',
              ),
              Tab(
                text: 'Gallery',
              ),
            ],
          ),
          
        
        ),
        body: TabBarView(
              children:containers,
              )
      ),
    );
  
}
}
    /*return MaterialApp(
        home: Scaffold(
           appBar: AppBar(
             title: Text('TFLite Example'),
             backgroundColor: Colors.transparent
             ),
            body: Center(
              child: MyImagePicker()
              )
            )
          );*/


class MyImagePicker extends StatefulWidget {
  @override
  MyImagePickerState createState() => MyImagePickerState();
}

class MyImagePickerState extends State<MyImagePicker> {
  File imageURI;
  String result;
  String path;  
  File imageFile;
 Future getImageFromCamera() async {
   PickedFile pickedFile = await ImagePicker().getImage(
        source: ImageSource.camera,
    );
    if (pickedFile != null) {
       imageFile = File(pickedFile.path);
    }
   // await analyzeTFLite();
  setState(() {
    debugPrint('entered camera set state');
    imageURI = imageFile;
    path = pickedFile.path;
  });
}

Future getImageFromGallery() async {
 PickedFile pickedFile = await ImagePicker().getImage(
        source: ImageSource.gallery,
    );
    if (pickedFile != null) {
       imageFile = File(pickedFile.path);
    }
    //await analyzeTFLite();
  setState(() {
    debugPrint('entered gallery set state');
    imageURI = imageFile;
    path = pickedFile.path;
  });
}

/*Future analyzeTFLite() async {
    Tflite.close();
    String res = await Tflite.loadModel(
        model: "assets/model.tflite",
        labels: "assets/labels.txt"
    );
    debugPrint("MODEL LOADED SUCCESSFULLY");
    print('Model Loaded: $res');
  }
*/
Future classifyImage() async {
  await Tflite.loadModel(model: "assets/model_unquant.tflite",labels: "assets/labels.txt");
  var output = await Tflite.runModelOnImage(path: path);
  setState(() {
    debugPrint('entered classify set state');
    result = output.toString();
  });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      imageURI == null
        ? Text('No image selected.')
        : Image.file(imageURI, width: 340, height: 320, fit: BoxFit.cover),
      Container(
        margin: EdgeInsets.fromLTRB(0, 30, 0, 20),
        child: ElevatedButton(
          onPressed: () => getImageFromCamera(),
          child: Text('Click Here To Select Image From Camera'),
          //textColor: Colors.white,
          //color: Colors.blue,
          //padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
        )),
      Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: ElevatedButton(
          onPressed: () => getImageFromGallery(),
          child: Text('Click Here To Select Image From Gallery'),
          //textColor: Colors.white,
          //color: Colors.blue,
          //padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
        )),
      Container(
        margin: EdgeInsets.fromLTRB(0, 30, 0, 20),
        child: ElevatedButton(
          onPressed: () => classifyImage(),
          child: Text('Classify Image'),
          //textColor: Colors.white,
          //color: Colors.blue,
          //padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
        )),
      result == null
        ? Text('Result')
        : Text(result),
     //   : Text('result not displayed')
    //  Container(
    //  child:FlatButton(

    //             child: Text('Back', style: TextStyle(fontSize: 20.0),),  
    //             color: Colors.blueAccent,  
                
    //             textColor: Colors.white,  
    //             onPressed: () {
    //               Navigator.push(context, MaterialPageRoute(builder:(context)=>new SecondRoute()));
    //             },  
          
    //   ),
    //  ),
  ]
  ))
  );
}
}
class MyImagePicker1 extends StatefulWidget {
  @override
  MyImagePickerState1 createState() => MyImagePickerState1();
}

class MyImagePickerState1 extends State<MyImagePicker1> {
  
    



Widget build(BuildContext context) {
  return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Detect Room Color',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyApp123(),
    );
      

}
}