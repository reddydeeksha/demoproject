// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
 
// void main() => runApp(TToS());
 
// class TToS extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Text To  Speech'),
//           backgroundColor: Colors.deepOrange,
//         ),
//         body: _Home(),
//       ),
//     );
//   }
// }
 
// class _Home extends StatefulWidget {
//   @override
//   __HomeState createState() => __HomeState();
// }
 
// class __HomeState extends State<_Home> {
 
//   final FlutterTts flutterTts = FlutterTts();
 
//   @override
//   Widget build(BuildContext context) {
 
//     TextEditingController textEditingController = TextEditingController();
 
//     _speak(String text) async{
//       print(await flutterTts.getLanguages);
//       await flutterTts.setLanguage('en-US');
//       await flutterTts.setPitch(1);
//       await flutterTts.speak(text);
//     }
 
//     return Container(
//       alignment: Alignment.center,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextFormField(
//               decoration: InputDecoration(
//                 hintText: 'Enter Something To Speak',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: BorderSide(
//                     width: 2,
//                     color: Colors.deepOrange
//                   )
//                 )
//               ),
//               controller: textEditingController,
//             ),
//           ),
//           RaisedButton(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8),
//               side: BorderSide(width: 2,color: Colors.deepOrange)
//             ),
//             child: Text('Press this button to say HELLO',style: TextStyle(
//               fontSize: 20,
//               color: Colors.white
//             ),),
//             onPressed: () => _speak(textEditingController.text),
//             padding: EdgeInsets.all(20),
//             color: Colors.deepOrange,
//           ),
//         ],
//       )
//     );
//   }
// }