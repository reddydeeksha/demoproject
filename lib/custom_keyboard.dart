import 'package:path/path.dart';
import 'package:shimmer/shimmer.dart';

import 'main.dart';

import 'test_keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cool_ui/cool_ui.dart';
import 'package:flutter/services.dart';


class CustomKeyboardDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CustomKeyboardDemoState();
  }
}

class CustomKeyboardDemoState extends State<CustomKeyboardDemo> {
  TextEditingController textEditingController =
      TextEditingController();
  TextEditingController textEditing2Controller =
      TextEditingController();
  bool _passwordVisible;
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    final topPadding=MediaQuery.of(context).padding.top;

    
  
    // TODO: implement build
    return KeyboardMediaQuery(child: Builder(builder: (ctx) {
      // CoolKeyboard.init(ctx);
      return Scaffold(
          appBar: AppBar(
            title: Text("Custom Keyboard Demo"),
          ),
          body: ListView(
            
            children: <Widget>[
              
              SizedBox(
                  height: 180,
                ),
              
              Container(
            
                // decoration: BoxDecoration(
                //   gradient: LinearGradient(colors: [
                //     Color.fromRGBO(145, 131, 222, 1),
                //     Color.fromRGBO(160, 148, 227, 1),
                //   ],begin: Alignment.topCenter,end: Alignment.bottomCenter
                //   ),
                  
                // ),
                // child:Scaffold(
                //   backgroundColor: Colors.transparent,
                //   body: SizedBox(
                //     width:double.infinity,
                //     child:Column(children: [
                //     SizedBox(height:topPadding),
                //     SizedBox(height:10),
                //     AnimatedImage(),
                //     //Image.asset('assets/images/imgg1.jpg'),
                //   ],), ),),
              height:100,
                width: 100,
                child: Shimmer.fromColors(
                  child: Text("LOGIN",
                   
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  textAlign: TextAlign.center,
                  ),
                  baseColor: Colors.red, 
                  highlightColor: Colors.blueAccent,
                  ),
                

              ),
              
              /*Container(
                alignment: Alignment.centerRight,  
                child: TextField(
                
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    //labelText: "LOG IN",
                    hintText: "LOG IN",
                    hintStyle: TextStyle(
                      fontSize:24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                      
                       ),
                       //border: UnderlineInputBorder()
                  ),
              ),*/
              SizedBox(
                  height: 10,
                ),
                  

              
              TextField(
                controller: textEditingController,
                keyboardType: TestKeyboard.inputType,
                decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                prefixIcon: Icon(Icons.email),
                hintText: "Email",
                hintStyle: TextStyle(fontFamily: 'DancingScript'),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                    borderRadius: BorderRadius.circular(25.0)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 32.0),
                    borderRadius: BorderRadius.circular(25.0)))),
              /*TextField(
                controller: textEditingController,
                decoration: InputDecoration(labelText: 'email'),
                keyboardType: TestKeyboard.inputType,
              ),*/
              SizedBox(
                  height: 25,
                ),
              TextField(
                controller: textEditing2Controller,
                keyboardType: TestKeyboard.inputType,
                obscureText: _passwordVisible,
              decoration: InputDecoration(
                
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                
                prefixIcon: Icon(Icons.lock),
                
                hintText: "Password",
                hintStyle: TextStyle(fontFamily: 'DancingScript'),
                suffix: InkWell(
                    onTap: _togglePasswordView,
                                        child: Icon( _passwordVisible ?Icons.visibility:Icons.visibility_off),
                                    ),
                                    
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                                        borderRadius: BorderRadius.circular(25.0)),   
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white, width: 32.0),
                                        borderRadius: BorderRadius.circular(25.0)
                                        
                                        )
                                        )
                                        
                                        ),
                                        
                                        
                                  SizedBox(
                                      height: 36,
                                    ),
                                   
                                  /*TextField(
                                    controller: textEditing2Controller,
                                    decoration: InputDecoration(labelText: 'password'),
                                    keyboardType: TestKeyboard.inputType,
                                  ),*/
                                  Container(
                                  /*Padding(
                                  
                                  padding: EdgeInsets.only(left: 100.0, right: 100.0),*/
                                  width: 0.0,
                                  height: 50.0,
                                  child:RaisedButton(
                                    color: Colors.blue,
                                    
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)),
                                    /*highlightColor: Colors.blue,
                                    hoverColor: Colors.redAccent,*/
                                    child: Text('Login',
                                    style: TextStyle(fontFamily: 'DancingScript',
                                    fontWeight: FontWeight.bold),),
                                    splashColor: Colors.black,
                                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    //padding: EdgeInsets.only(left: 100.0, right: 100.0),
                                    onPressed: (){
                                      if(textEditingController.text=="arthy" && textEditing2Controller.text=="arthyb" ){
                                      Navigator.push(context, MaterialPageRoute(builder:(context)=>new SecondRoute()));
                                      }
                                      else{
                                       return showDialog(
                                          context: context,
                                          builder: (context) {
                                          return AlertDialog(
                                          // Retrieve the text the user has entered by using the
                                        // TextEditingController.
                                        content: Text("Wrong username or password"),
                                        
                                        );
                                      },
                                    );
                                      }
                                      /*showInputDialogs(
                                        context: context,messageWidget: Text('weertyg'),
                    
                                        //keyboardType: NumberKeyboard.inputType
                    
                                      );*/
                                    },
                                  ),
                                  )
                                ],
                              )
           // ]
          //)
                              );
                        }));
                      }
                    
                      static Future<String> showInputDialogs(
                          {@required BuildContext context,
                          Widget titleWidget,
                          Widget messageWidget,
                          List<TextInputFormatter> inputFormatters,
                          TextInputType keyboardType = TextInputType.number}) {
                        String value;
                        return showCupertinoDialog<String>(
                            context: context,
                            builder: (context) {
                    //       The minimum insets for contents of the Scaffold to keep visible.
                              List<Widget> children = [];
                              if (messageWidget != null) {
                                children.add(messageWidget);
                              }
                              children.add(Form(
                                  child: Container(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Material(
                                          child: Column(children: <Widget>[
                                            TextField(
                                        inputFormatters: inputFormatters,
                                        keyboardType: keyboardType,
                                        autofocus: true,
                                        onChanged: (newValue) {
                                          value = newValue;
                                        },
                                      ),
                                      TextField(
                                        inputFormatters: inputFormatters,
                                        keyboardType: TextInputType.text,
                                        onChanged: (newValue) {
                                          value = newValue;
                                        },
                                      ),
                                      TextField(
                                        inputFormatters: inputFormatters,
                                        keyboardType: keyboardType,
                                        onChanged: (newValue) {
                                          value = newValue;
                                        },
                                      )
                                          ],)))));
                              return CupertinoAlertDialog(
                                    title: titleWidget,
                                    content: Column(
                                      children: children,
                                    ),
                                    actions: <Widget>[
                                      CupertinoDialogAction(
                                        child: Text("12345"),
                                        onPressed: () => Navigator.of(context).pop(),
                                      ),
                                      CupertinoDialogAction(
                                        child: Text("4567y"),
                                        onPressed: () {
                                          Navigator.of(context).pop(value ?? '');
                                        },
                                      )
                                    ],
                                  );
                            });
                      }
                    
                      void _togglePasswordView() {
                        //void _togglePasswordView() {
                      setState(() {
                           _passwordVisible = !_passwordVisible;
    });
  }
}
  