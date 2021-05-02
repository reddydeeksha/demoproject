import 'package:cool_ui/cool_ui.dart';
import 'package:flutter/material.dart';

class TestKeyboard extends StatelessWidget{
  static const CKTextInputType inputType = const CKTextInputType(name:'CKTestKeyboard');
  static double getHeight(BuildContext ctx){
    MediaQueryData mediaQuery = MediaQuery.of(ctx);
    return mediaQuery.size.width / 3 / 5 * 5;
  }
  final KeyboardController controller ;
   TestKeyboard({@required this.controller, this.onTextInput});

  static register(){
    CoolKeyboard.addKeyboard(TestKeyboard.inputType,KeyboardConfig(builder: (context,controller, params){
      return TestKeyboard(controller: controller);
    },getHeight: TestKeyboard.getHeight));
  }
  final ValueSetter<String> onTextInput;
  //final VoidCallback onBackspace;

  void _textInputHandler(String text) => onTextInput?.call(text);
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Material(
      
      child: DefaultTextStyle(style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black,fontSize: 18.0), child: Container(
        /*height:getHeight(context),
        width: mediaQuery.size.width,*/
        
        height:500,
        width: 340,
        decoration: BoxDecoration(
          color: Color(0xffafafaf),
        ),
        child: GridView.count(
            
            childAspectRatio: 4/*3/1*/,
            mainAxisSpacing:4.0,
            crossAxisSpacing:4.0,
            padding: EdgeInsets.all(1.0),
            
            crossAxisCount: 4,
            children: <Widget>[
              buildButton1('q','assets/images/Q1.jpg'),
              buildButton1('w','assets/images/W.jpg'),
              buildButton1('e','assets/images/E.jpg'),
              buildButton1('r','assets/images/R.jpg'),
              buildButton1('t','assets/images/T.jpg'),
              buildButton1('y','assets/images/Y.png'),
              buildButton1('u','assets/images/U.jpg'),
              buildButton1('i','assets/images/I.png'),
              buildButton1('o','assets/images/O.png'),
              buildButton1('p','assets/images/P.jpg'),
              buildButton('a'),
              buildButton1('s','assets/images/S.png'),
              buildButton1('d','assets/images/D.jpg'),
              buildButton1('f','assets/images/F.png'),
              buildButton1('g','assets/images/g.png'),
              buildButton1('h','assets/images/H.png'),
              buildButton1('j','assets/images/J.jpg'),
              buildButton1('k','assets/images/k.gif'),
              buildButton1('l','assets/images/L.jpg'),
              buildButton1('z','assets/images/Z.png'),
              buildButton1('x','assets/images/X.jpg'),
              buildButton1('c','assets/images/c.png'),
              buildButton1('v','assets/images/V.jpg'),
              buildButton1('b','assets/images/B.png'),
              buildButton1('n','assets/images/N.jpg'),
              //buildButton('m'),
              Container(
                color: Color(0xFFd3d6dd),
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  child: Center(child: Icon(Icons.expand_more),),
                  onTap: (){
                    controller.doneAction();
                  },
                ),
              ),
              buildButton('m'),
              
              //buildButton('0'),
              Container(
                color: Color(0xFFd3d6dd),
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  child: Center(child: Text('X'),),
                  onTap: (){
                    controller.deleteOne();
                  },
                ),
              ),
            ]),
      )),
    );
  }
  Widget buildButton1(String title,String img,{String value}){
     return Container(
       child: GestureDetector(
         
        behavior: HitTestBehavior.translucent,

         child: new Image.asset(img,fit:BoxFit.fill),
         
        // child: new Tab(icon:new 
        // Image(image: AssetImage('assets/images/g.png'),
        

        // Image.asset("assets/images/g.png",
        // width:  1.0,
        // height: 1.0,
        // )),

        onTap: (){
          controller.addText(value ?? title);
        },
      ),

     );
  }

  Widget buildButton(String title,{String value}){
    return Container(
      color: Colors.grey,
      // SizedBox(height: 200),
      height: 500,
      width: 500,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        child: Center(child: Text(title)),
        onTap: (){
          controller.addText(value ?? title);
        },
      ),
    );
  }
}
      /*height: 160,
      color: Colors.blue,
      child: Column(
        children: [
          buildRowOne(),
          buildRowTwo(),
          buildRowThree(),
          buildRowFour(),
        ],
      ),
    );
  }
  Expanded buildRowOne() {
    return Expanded(
      child: Row(
        children: <Widget> [
          TextKey(
            text: 'q',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'w',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'e',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'r',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 't',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'y',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'u',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'i',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'o',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'p',
            onTextInput: _textInputHandler,
          ),
        ],
      ),
    );
  }
  
  Expanded buildRowTwo() {
    return Expanded(
      child: Row(
        children: [
          TextKey(
            text: 'a',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 's',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'd',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'f',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'g',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'h',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'j',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'k',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'l',
            onTextInput: _textInputHandler,
          ),
        ],
      ),
    );
  }
  Expanded buildRowThree() {
    return Expanded(
      child: Row(
        children: [
          TextKey(
            text: 'z',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'x',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'c',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'v',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'b',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'n',
            onTextInput: _textInputHandler,
          ),
          TextKey(
            text: 'm',
            onTextInput: _textInputHandler,
          ),
          /*BackspaceKey(
            onBackspace: _backspaceHandler,
          ),*/
        ],
      ),
    );
  }
  Expanded buildRowFour() {
    return Expanded(
      child: Row(
        children: [
          TextKey(
            text: ' ',
            flex: 4,
            onTextInput: _textInputHandler,
          ),
          
        ],
      ),
    );
  }
  
}
class TextKey extends StatelessWidget {
  const TextKey({
    Key key,
    @required this.text,
    this.onTextInput,
    this.flex = 1,
  }) : super(key: key);
  final String text;
  final ValueSetter<String> onTextInput;
  final int flex;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Material(
          color: Colors.blue.shade300,
          child: InkWell(
            onTap: () {
              onTextInput?.call(text);
            },
            child: Container(
              child: Center(child: Text(text)),
            ),
          ),
        ),
      ),
    );
  }
}
*/      