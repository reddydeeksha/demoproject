import 'package:flutter/material.dart';
import 'package:majorproj2/test_keyboard.dart';
import 'package:shimmer/shimmer.dart';
import 'InputDeco_design.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}
class _FormPageState extends State<FormPage> {
  String name,email,phone;
  //TextController to read text entered in text field
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                  child: Text("SignUp",
                   
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  textAlign: TextAlign.center,
                  ),
                  baseColor: Colors.red, 
                  highlightColor: Colors.blueAccent,
                  ),
                

              ),
              
                Padding(
                  padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
                  child: TextFormField(
                    keyboardType: TestKeyboard.inputType,
                    //keyboardType: TextInputType.text,
                    decoration: buildInputDecoration(Icons.person,"Full Name"),
                    validator: (String value){
                      if(value.isEmpty)
                      {
                        return 'Please Enter Name';
                      }
                      return null;
                    },
                    onSaved: (String value){
                      name = value;
                    },
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                //   child: TextFormField(
                //     keyboardType: TestKeyboard.inputType,
                //     //keyboardType: TextInputType.text,
                //     decoration:buildInputDecoration(Icons.email,"Email"),
                //     validator: (String value){
                //       if(value.isEmpty)
                //       {
                //         return 'Please a Enter';
                //       }
                //       if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                //         return 'Please a valid Email';
                //       }
                //       return null;
                //     },
                //     onSaved: (String value){
                //       email = value;
                //     },
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                //   child: TextFormField(
                //     keyboardType: TextInputType.number,
                //     decoration:buildInputDecoration(Icons.phone,"Phone No"),
                //     validator: (String value){
                //       if(value.isEmpty)
                //       {
                //         return 'Please enter phone no ';
                //       }
                //       return null;
                //     },
                //     onSaved: (String value){
                //       phone = value;
                //     },
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    controller: password,
                    keyboardType: TestKeyboard.inputType,
                    obscureText: true,
                    //keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.lock,"Password"),
                    validator: (String value){
                      if(value.isEmpty)
                      {
                        return 'Please a Enter Password';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                  child: TextFormField(
                    controller: confirmpassword,
                    obscureText: true,
                    keyboardType: TestKeyboard.inputType,
                    //keyboardType: TextInputType.text,
                    decoration:buildInputDecoration(Icons.lock,"Confirm Password"),
                    validator: (String value){
                      if(value.isEmpty)
                      {
                        return 'Please re-enter password';
                      }
                      print(password.text);
                      print(confirmpassword.text);
                      if(password.text!=confirmpassword.text){
                        return "Password does not match";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: RaisedButton(
                    color: Colors.redAccent,
                    onPressed: (){
                      if(_formkey.currentState.validate())
                      {
                        print("successful");
                        return;
                      }else{
                        print("UnSuccessfull");
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        side: BorderSide(color: Colors.blue,width: 2)
                    ),
                    textColor:Colors.white,child: Text("Submit"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}