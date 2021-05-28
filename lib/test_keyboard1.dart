import 'package:cool_ui/cool_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:majorproj2/test_keyboard.dart';

class TestKeyboard1 extends StatelessWidget{
  TextEditingController textEditingController =
      TextEditingController();
  bool _readOnly = true;
  static const CKTextInputType inputType = const CKTextInputType(name:'CKTestKeyboard');
  static double getHeight(BuildContext ctx){
    MediaQueryData mediaQuery = MediaQuery.of(ctx);
    return mediaQuery.size.width / 3 / 5 * 5;
  }
  final KeyboardController controller ;
   TestKeyboard1({@required this.controller, this.onTextInput});

  static register(){
    CoolKeyboard.addKeyboard(TestKeyboard1.inputType,KeyboardConfig(builder: (context,controller, params){
      return TestKeyboard1(controller: controller);
    },getHeight: TestKeyboard1.getHeight));
  }
  final ValueSetter<String> onTextInput;
  //final VoidCallback onBackspace;

  void _textInputHandler1(String text) => onTextInput?.call(text);
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(height: 70),
          TextField(
            controller: textEditingController,
            keyboardType: TestKeyboard.inputType,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            style: TextStyle(fontSize: 24),
            autofocus: true,
            showCursor: true,
            readOnly: _readOnly,
          ),
      // appBar: new AppBar(
      //       title: Text("Custom Keyboard Demo"),
      //     ),
      // body: ListView(
            
            
      //       children: <Widget>[
              
      //         SizedBox(
      //             height: 140,
      //           ),
              
              
      //           TextField(
      //           controller: textEditingController,
      //           keyboardType: TestKeyboard.inputType,
      //           decoration: InputDecoration(
      //           contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      //           prefixIcon: Icon(Icons.email),
      //           hintText: "Email",
      //           hintStyle: TextStyle(fontFamily: 'DancingScript'),
      //           border: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
      //               borderRadius: BorderRadius.circular(25.0)),
      //           focusedBorder: OutlineInputBorder(
      //               borderSide: BorderSide(color: Colors.white, width: 32.0),
      //               borderRadius: BorderRadius.circular(25.0)))),
      SizedBox(
                  height: 80,
                ),
        ],
      ),
      );
  }
}