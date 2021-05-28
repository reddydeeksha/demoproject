import 'package:carousel_slider/carousel_slider.dart';
import 'package:majorproj2/MicDemo1.dart';
import 'package:majorproj2/Text_to_speech.dart';
import 'package:majorproj2/carousel/Carousel.dart';
import 'package:majorproj2/objectdetection.dart';
import 'package:majorproj2/registration/screens/create-new-account.dart';
import 'package:majorproj2/registration/screens/forgot-password.dart';
import 'package:majorproj2/slider/slidermain.dart';
import 'package:majorproj2/test_keyboard1.dart';
import 'package:splashscreen/splashscreen.dart';

import 'videostreammain.dart';
import 'package:flutter/material.dart';
import 'package:majorproj2/UserManualPage.dart';
import 'package:shimmer/shimmer.dart';

import 'custom_keyboard.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:avatar_glow/avatar_glow.dart';
import 'package:highlight_text/highlight_text.dart';
import 'test_keyboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:cool_ui/cool_ui.dart';
import 'UserManualPage.dart';
import 'UserNotesDemo.dart';

import 'package:majorproj2/NavBar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'package:flutter/services.dart';
import 'constants.dart';


void main() {
  NumberKeyboard.register();
  TestKeyboard.register();
  runApp(KeyboardRootWidget(child: MyApp()));
  // runApp(MyApp());
}
//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => MyHomePage1(),
      //   'ForgotPassword': (context) => ForgotPassword(),
      //   'CreateNewAccount': (context) => CreateNewAccount(),
      // },
      home: MyHomePage1(title: 'Flutter Login'),
    );
  }
}
class MyHomePage1 extends StatefulWidget {
      MyHomePage1({Key key, this.title}) : super(key: key);
      final String title;
      @override
      _MyAppState createState() => new _MyAppState();
      
    }


class _MyAppState extends State<MyHomePage1>{
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      // title: new Text(
      //   'Welcome In SplashScreen',
      //   style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      // ),
      title: new Text('Converse',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0
      ),),
      seconds: 4,
      navigateAfterSeconds: SliderMain(),
      image: new Image.asset(
          'assets/loading.gif'),
      backgroundColor: Colors.black,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 150.0,
      onClick: () => print("Flutter Egypt"),
      loaderColor: Colors.white,
    );
  }
}
// class _MyHomePageState1 extends State<MyHomePage1> {
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         child: Stack(
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height,
//               child: Image.asset('assets/ashu123.jpg',fit: BoxFit.cover,),

//             ),
//             Builder(builder: (context)
//             {
//               return Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: SlideAction(
//                   alignment: Alignment.bottomCenter,
//                   innerColor: Colors.black,
//                   outerColor: Colors.white,
//                   sliderButtonIcon: Icon(Icons.arrow_right,color: Colors.white,),
//                   borderRadius: 16.0,
//                   submittedIcon: Icon(Icons.done),
//                   animationDuration: Duration(seconds: 0),
//                   onSubmit: (){
//                      Navigator.push(context, MaterialPageRoute(builder: (context) =>SliderMain()));
//                   },
//                 ),
//               );
//             })
//           ],
//         ),
//       )
//     );
//   }
// }

  
class MyHomePage extends StatefulWidget {
      MyHomePage({Key key, this.title}) : super(key: key);
      // This widget is the home page of your application. It is stateful, meaning
      // that it has a State object (defined below) that contains fields that affect
      // how it looks.
      // This class is the configuration for the state. It holds the values (in this
      // case the title) provided by the parent (in this case the App widget) and
      // used by the build method of the State. Fields in a Widget subclass are
      // always marked "final".
      final String title;
      @override
      _MyHomePageState createState() => new _MyHomePageState();

      
    }
class SecondRoute extends StatefulWidget{
    _SecondRoute createState() => new _SecondRoute();
}
class KeyboardDemo extends StatefulWidget{
    _KeyboardDemoState createState() => new _KeyboardDemoState();
}
class _SecondRoute extends State<SecondRoute> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    // Text(
    //   'Welcome',
    //    style: TextStyle(fontFamily: 'DancingScript',
    //    fontWeight: FontWeight.bold),
    // ),
    Text(
      'Index 0: Home',
       style: TextStyle(fontFamily: 'DancingScript',
       fontWeight: FontWeight.bold),
    ),
    Text(
      'Index 1: Keyboard',
      style: TextStyle(fontFamily: 'DancingScript',
      fontWeight: FontWeight.bold),
    ),
    Text(
      'Index 2: User Manual',
      style: TextStyle(fontFamily: 'DancingScript',
      fontWeight: FontWeight.bold),
    ),
    // Text(
    //   'Index 4: Settings',
    //   style: TextStyle(fontFamily: 'DancingScript',
    //   fontWeight: FontWeight.bold),
    // ),
    Text(
      'Index 3: UserNotes',
      style: TextStyle(fontFamily: 'DancingScript',
      fontWeight: FontWeight.bold),
    ),



    
  ];
  void _onItemTapped(int index) { 

    setState(() {
      _selectedIndex = index;
    
    });
    
    if (index == 0){      
  }


      //Navigator.push(context, MaterialPageRoute(builder:(context)=>new HomePage123()));

    if (index == 1){
      Navigator.push(context, MaterialPageRoute(builder:(context)=>new KeyboardDemo()));

    }
    if (index == 2){
      Navigator.push(context, MaterialPageRoute(builder:(context)=>new MyApp1()));

    }
    // if (index == 4){
      
      
    //   Navigator.push(context, MaterialPageRoute(builder:(context)=>new Videostream()));

    // }
    if (index == 3){
      Navigator.push(context, MaterialPageRoute(builder:(context)=>new UserNotesDemo()));

    }
  }
  Future<void> _exitApp() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, //this means the user must tap a button to exit the Alert Dialog
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Log Out'),
        backgroundColor: Colors.white,
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Are you sure you want to logout?'),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Yes'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>new CustomKeyboardDemo()));
            },
          ),
          FlatButton(
            child: Text('No'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder:(context)=>new SecondRoute()));
            },
          ),
        ],
      );
    },
  );
}
  @override
  //String text = 'Press the button and start speaking';
  @override
  Widget build(BuildContext context) {
    Material loginButon;
        return Scaffold(
          drawer: NavBar(),
          appBar: AppBar(
            //automaticallyImplyLeading: false,
            title: Text("©onverse",style: TextStyle(fontSize: 28.0,fontFamily: 'Courgette-Regular')),
            
            
            actions: <Widget>[
            PopupMenuButton<String>(
            icon: Icon(Icons.list),
            offset: Offset(100,0),

            onSelected: choiceAction,
            itemBuilder: (BuildContext context){
              return Constants.choices.map((String choice){
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
            IconButton(
              icon: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onPressed: () {
              _exitApp();
            //Navigator.push(context, MaterialPageRoute(builder:(context)=>new CustomKeyboardDemo())); 
        // do something
      },
    )
  ],
    
          ),
          body: ListView(
        children: [
          CarouselSlider(
              items: [
                
                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                    image: AssetImage(
                    'assets/imgg1.jpg'),
                    fit: BoxFit.fill,
                    // borderRadius: BorderRadius.circular(8.0),
                    // image: DecorationImage(
                    //   image: NetworkImage("https://data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgWFhYYGRgYGRgYHBgZGhoYGhwcGhwcGRwcGhkcIS4lHB4rHxkYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHzYrJCs0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIAPsAyQMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAADBAACBQEGB//EADoQAAEDAgMFBgQFAwUBAQAAAAEAAhEDIQQSMUFRYXGBBSKRobHwEzLB0QYUQlLxYnLhBzOCkqIkI//EABkBAAMBAQEAAAAAAAAAAAAAAAABAgMEBf/EACQRAAICAgICAQUBAAAAAAAAAAABAhESIQNRMUETBDJhgfCR/9oADAMBAAIRAxEAPwD6+CrgobSrhMRddXAuhIZ1RRRAEUUUQBFFFEARRRRAEUUUQBFFFEARRRRAEUUUQBFwqLiAOFUKsVQpiOOKqo5VlMks0q4KE0ojSkNBAVZUBVwkM6urgXUDIooogCKKKIAiiiiAIooogCKKKIAiiiiAIooogDhXCouFAFSquXSqOTEyriqSuuKpKZJ1pRWlKurAbei4zFjaEUxZJDwKuCl6ddp2o0pFJhF1LuxLRaUGtjNjfH7IUWDkkPKLJdiXH9Soys4bSqwZPyI2UOrUAEpaljJEGJ37CuV82s7oG5LHexuWrRb83eLBMsfIkJcOaXSRs2q1SqNAQN10NDT7Yyos1tR0nvRK6/FPaLgHijFizXs0VQ1Aso41x1QziiqXGyHyr0bAqhWzhYf5spiniZ2ocBLlNUFRJseUVpKlxNVKw6qVQkobid6VBYQqjihOqHehurp0JyCOKqgmuq/HTpiyRisxwdoQeqL+Y4rxdPEEaFPUO0HDbPNdGJzZHrqNSdq0WY8C0yLBeRw2OnbB4p5mKUSjZcZ0bWIrtc6QhufKzBiERmISUROdseldlKNrogqp0KxiV3Od5QBUVg9FDTCSrGpCDnWR+IO2xh2AlrnF37QLDeSfDaok1FWzSEXOVI3RVOxcdUJ1K+W4n8XveQQ9zXNdZozCZOyDBIFoIuvd/h7tM16WdwGYHKSAQHcRKmM1J1RpycLhG7s0y1VLVeVFrZzUDyroarlROwovQrubobbtiYfj5EZb70mqPKnFMpSaVIu6sd5VxjN4SpKo4p4oWTND8w07UJ9VIOKC553oxQsmPvqofxVnOqkKvxyqxFkeSplHDdyTY0jTRHpv3qgaG2VE5SrkbUjSdKYY3cixUadPETqjtqFZ9NM03xqiwoaa9GFRKZ592TLAANUNjSsK129R1ZBfUlDlJLsG+hoVV43/AFBxLCGMB74AJEbCSQeJEH/txW5je2KVKznguH6RFo1kmwXhu3u3KNd85ASABILoMTF5Em5vHisuWOSSXZ0fTSUW3JPxquzzYrXkz4lfTf8ATqt/875fmJqExN22HrdfOH/DOrHM3EGf/J2L6T+EGUW4eaTy/M6XEiC0wAGxuAGu2/ITGDyNOWacHf6PXCorCosw1FBXW+Jx5Gp8RcNRZwxCnxkYhkaPxFUuSBrrrcSjEMhpzkNzkJ1VCdVSoAr3ID3qj6iA+oqolhHvQ8yC+oqfERQrPKMxQjVFpYkbbrOp00xTpJpI0ZpU8Q0HcmW4gb7LM+FtRaOGcbopEs124sb0T86NyzaVA6JsYcjUJ0ibY7SxQ3FGbiuHmlKTE1TopaDY1RqA62RgZsBPIpQsWP212yWgspvEggOc3UGQCJ2Wnik9+C4nivxP2ScPVyh2dhktcSSbkkh52uE67dVjOdwW1Wq57kkyXXcZMDiUj8ALGUOjrhPWxMeK9f8AgOsynUe6o5zQ9oaB+mZmSN+7mVgMpAJ/CNYXQ95Y2NQM38eBVQjTtk8kslR9ScARLTIOhCE5pXgD2sKReGPc4MgsfBbIj9TTGmnGOK9l2RijWose6JcO8BscCQfMLSzmlD2Mlck8UU0zG/mqFscE8iMTkncVU1Fxz1RznbvqhMGXNUhT4qE+odrUJ727RCBoM56C96H8Qb/NVc88EDKPeqfEO5DqVDuQ/icECoz2UhuTLKSz2dptBgtOsLRoYppEx6LLNGzhLoKzDo1LColKu3gnKVZm8IzXZOEuilLDBMswytTrMJ1CBie3aDCGudcmLA24myT5EvLGuNv0PU8OEduHCWwHbFCoYY8E7srvstRtdm8/9XfZL5F2P430Liivj2NxhFSs1k9+pUMza7t28XuvsOPxzG0ajw8DKxxkg2MH6r4hiSPiO2jMdut96HP2jXjh5sdYQ1uXU6GPQKwKUY433SbI7Hq0xOJd7ZEJZ1R0RtF52wjuegVHix2jz3pMcUCfULiN8+yvpH+nlXPRfTNyx+Yf2uj6yvmRIm2nHYvZ/wCnWMyYnKSIeMp+nmpi/I+SOj6T+VUOETnxmDaFX84zelkZ4Ge/BbYVTheC0HYpm/yQG45jrtcCJiQJuOqeYvjEn4JAqYHdK0n4xg2hBfjW7wjP8h8b6MmpgiP4S7sKQtarjmbx5fdKv7QZMS3xCfyIXxszXUHIfwHbk7U7QEwMviCqfnhu9EZoPjZ4zE9lOOXL1k7hYrWwdMtYBlJgbSNeJVmtbvB6orMvBea5Ps9XFdDNP+0CN0HUpjO791/6Wt+pQKbR/SmWNI2hLJ9jwj0GbirgXFpm0crHX7Lw3bOBxD6zy2m9wLiQQIBXuQY/UF1rx+7zSU2nd2DgmqqjA/DPZ2IpuBeyASAYc0QIibEyV6x+HBYWZnRfQgETqRZBp1P6hyVxU4pSnbsqMK0ZH4hoinhagBJGUCXEE3e2f0r5jVN5HNfR/wAZV/8A5n8XMG79QXzYldXA7j+zn5VUv0OCcszqYiOe1cDkIyGiXTN8u4cdy6HWXSmc9F3PQXOUcVVJsqKOAJ/s3FGm9r/2kOG/ukFINMGytm3pJ0Nqz61WdjHXZ+XEzEmodbg6DYlqWGx4JJqYczA+V1t/inuz3k0abiLljCeZaE3O2PJeddaOzH2Js/MQ0P8AhnXNBcARfQRySOAwrqBdDJDiTIde7pAAygAAE+C2HTwVHIQ6EzWfn+RoZFvmzTxEQBqs/tXD1qhGSpkaIOUD5jH6nawtZ5S9R/LimhMxmYbEh2Y1GREBoBgHnt6qO+NYl7JAM9ycx2HXuxu4LReJ0hAeeATELuqun5WgdJPTYqfFdw8B91d7+HoqydyYGJSebySZHVMNqOmBaUjRfNwLzbidfRMMxAl1/lEX0kfwk4jUka9Kv3ZJjQDhtjy80Kpj8u2ySrVYcxg1ME83QFXFPBc5rW2k97x03CFDj2UpdDQ7RkAzrFrz7+6Yo4kERJjbvlZeGwm03uCOBT9JkbhyCmUV6Ki+xwYo23xfRGoYtzpk+f1SrLi5GzwTdFzNh0geUrNopNGV+JXF9BwDXHLD5N9NeViV4lfU31aZaWkSHCDfWbR6r5xiOzyyo1hMy4if7XEX6AH/AJLs+llrE5+eO8i1PBFxAuARObYBrdBxLWg5WaDVx2n6BOYms5ssBtoeizXFd0qXg4o2/JFVRRSaEKi6UTC0872N/c9o8SApboaVn1+hVygNy2AAHIBMNrDcsr83EX103wbooxViYK8rI9DEde8awqlw3EJFuIgd4/xsVc5Nwba7ZhUpMlxQ25zUvUe3elXh2+ff8JBzbHf/ABf1V2TQ++oz9yC9k/q+qz8ouo6rysYlNNiaGXUxvVfhjela+Jgb7Jb82f6leyRerTgM2QflAm5Np2CyM/AyIB1J5wYk8NAihwENAsYnpf1Rmvi+093j71Q5BiUdQOfNE2F4tNx1gNXGN7psM8E6RdwIHqE9SO83O2LbY9V3JBMaa+dlLZSRlYNji8gzABdwNtOckBXFF7myDqekan1nxWk/DBzH7C6LixF7AdcyZp0IbMXAAE2H8QZUsKMptB8hve04wZuPIeadZSygTaYMa6kEX6rRNPLL8gJNu9JFhuHAK5oB7jqAAABugRb3uUSSLTMD8u6Xd4wQ2Bs+YOP26rI7Xphtam68OaQCO8S8DLfoW+K9m3A94XjI2dNb6eM+SAzsZj25XiYLS1xFwRDgeB2KuObhJNinFTjR88qze0DRLFb3adBrqjnvD4EudeJiAACdJMbdNLwsTFB03aGyAQ0CAARa3LqvQjyKRxvjxdHBTcXBsHMYgbTmgjxkeKovRU6AbiHPB+Wk57QNQ0U2taecuNv6Z2rEw2GmMxgKVNMpxoAVp/huhnxDNzZeeQ/yQm29kfEY4UmuLm5SALTJgzJgmJ89VtfhnsF9EOe+A9zcoZIsM1wTxjyCifLHF9lw43aNVlMucSNCY6TCcdRsN2pjeqsZlJDfG+y5XajyRpIsIGvFefqzr9HBh7y43ud0q7gAFX4u/p6JZ9eZM2EifAD18laJLVW7iNuvNZz5JPPSOv1CM95nXfYcEN1SJ338lSsTA1mGNY+yG1jbzqu1K4Ou/wB/VKurgXi270VJEsM9oix+vuyX+HxVX1DPG30Ujh6/ZVsnRM8giYN4O4Rr0hFa2dNMoM7TPvzWa14DCP1ab7ArQwzyGxy8IRKIJjeewMbT9gmA+I5gHoP4ShNwBrrPWfqfBVZmLyenO6zaLTRq/E096CB5ooqXiLXPhaPe5JVHCDB0cP8AIVaTi3KJuAZ4n3KmTGka9CqCI3Ejf71KKHmJGk8Vn0KgIB0k+JzSmDWA7tsoEnnqfsk/FDXmxxroEkzP+PsusxDe9I+Uz5D3CUdWkARsHS0+S5XeMsDQkCf7rfVS3spLR5zHOY9z3RIZcgiQ46ACLmCQNLzAlYHaTxmbmALsjQ4SHQZMgkbfutuu9lJ+SXSQGuJDgAO6STHG0rI7Goh1ekC3TMXA6S0vcDfXVi7IaWXo5p23QzjGvY9xe5rXPosBaJJDXd0gWtGS/wDcl6OUCWy47Ds8YJW7+JaDJY43c5uTUXLXFxkm0XAWG8FpMm/9I/8AzbwgQD4lOMskDVM9L+FSC55n9g0A1zbNdi9FzH6jb7dfosD8MDuvMgkZDLdP1WBOz7rebVBBcNsEA8BP18lzT+9m8ftI91yOJnrcX8FG1BqNDMHn7CESZJO0yOgn1Kq+oCADYGw6IQmgdTTiDB4Fx+kpbEP+ax3AcgCL+9EzVMstr/EE9LIT+83qeG+FZIm6jDonZJk++Hmh/DkuEmTmjmS4fVEq/NANz95hCrEmSLRmB4mLEpp0IzocAcw2gRuvP1CEGAuIO7016StGpTnNzmP6rH6eaTo04JnV3Xh91aogWxL+/rr/ABPqu/EH9XmjU6IjMbmZ4zx8Su5W7lVImzLq0xa+oLuXDgnWVLhs2gHwSFIZngbBPgNPonXuzd4GLOHglIqLCCuC5sazz3x74p3DVQWk8denksR8sd/y9JTeGeDTI23Nuv2USj4ZSfoeJl0jd0n3Ksx7jAF8zY6Tc8NEMslthEt02Xgn6qVC4NYBoDJ36rM0ZrtYO7yzEcfcoFWrfLvueJ18PuuMry0mJNh9UqH5YkSXFxMa2sAOGqWg2HqYsMJJM5zkE6Tm+v3TVKuTB3Sd2Y3aP/R/8rKqXexjoIaNDHzuIF9oIkrTqBrGjOZLS4yNplx57QEmlaGm9mfjqTHNfUe8uaHZnMGjiLNDuEuJIF+9wCz+yWPfUbWmTmeXg7AIAAPCPRamPY6p8NgYIzNc42AsWk5htFz/AOVGObTDgwANaJbtlz3OBdv2D02K3PVf1EqO7/rD9otbUbJ1aAGDZJcBfxPmsLEsYx4aJIPyh225bbqCtprw6mHxENJLdSJaY594T0WW95zsdlJDWggDUXOUce+5Vxt0Kfk2Oz+5RL4PetcWEGLRxzXTzcV3GkQZkxPMD0WNj6+Sgxmlx4iZnxXKFaaOa5hzW7gdZv4LOUW3ZSklo3a9WY/tgnZMHbvt5pR9cEX8+EDpc+SSbis5flcJzTHGII81WudbxeQIJ0E6btPJGLsMlRpCqRc63JHTh7sqPxE6EW2c/wCVmS6zgQRfMJnUWnhPqo7EWJjYfEe/cKkhNjjqt8o1BN+dkF2jtx+kfdArPINjcT4e4V8TW1A/uEcYP3Voku91iRNhPUIRF7+515oFOuRrvI9I9ECtie80cRPT+E0n4JYyx2p3knd6Lsjh4BK5zmjfbx0Q8x9kK9k6M6k+MzRqfum8M4iDuke9wlJ0XAS46kx4ozH5SZnvR0TkhRZ3GOJcziJHUyrEhrZO2BHX7Kpe0gO/YDlG+P4Q8Q4yRsJb53KVeh37NhtcvZAtsG7iivrtuyb5QOGmiycNiYBJ2WG/iiucTBjUkc4WTjWjVSs1GszdyY0I4QNqvXoiAQbsGYzG2fBKYav3iDcxu37FV+L7rrgF1h0MKMWO0FweC7+aXQx0yb2He+ydfiAS5xHdYM19pItPiEnh8VZ+bTRu+CIt6pd9XMCJsSRJ3SCTx0KMW/I7S8DmKxGb4Yky4SRO/vd4/tBknflCp2m8gBxEBrGw0Dkbx8oiAr/Da5+U/KO6YG5rJg7O8Igb1Mc1r3lo0MF26ws0cB6pJrX4Bp7LUwXUA0jKRmubaCLXk6nxS7KLy8G7WtDZ5jRoFry6eGqLUxQY52WS+QAXbLAjK3YBI68ku6rlYxmWQcxJ1lzSTqdBYc+Oyo3/AKKVAcYxzy+NZBA1mQGm+2152wea6yo4ZILhcki40c6GnnlvzKXwtQsDu9AFzYEk2BEbBY+IR8S4OJdEQIDQbnM2GDnpdaPzRmuwYeWvA2SZmx3eMgJ/H1S1zTY5g0zNr2MpGjLmZyASwZgD/wBbjaO6D0Cb7XrS2mQA7uXI6TpsR7C9C1GrDmjdnHTX7Hoih/dgbDmHmCPAhZ73Q+3dgyDq2dAbzaPRGqVzmDr65HcLwfoevBPEVjzHy0zrGYacNvI+iDUqQCd3opjamVrQLQ0epJSr3wJ3ehshRByLB8meM+SE99w7jI5qhkSeEekeSoHCWjiB0VqJLYyK09HeV49UKTw8EBz7+HTh6o2cJ0Kxeq4NAGpnNI0UxL8xHKUs+Bx3I9R4E78sK6JslN5LY47USkJuTYn3ZCYO7s1JnooK2nC6TQ0y9QieEFMMfrwACWDBGZR7ogKWrGnQ1RrHPKO85obYEEmL6LOpvhwjgiuxBBPvTRS49FKXY9iXNLi7Y0AQPBcwzcwzHRpgDkZPTXxSOc97ft280f4lmgGAAfMXPFS40qKUk3ZtYcQxzyZJPd9ZJ5nyS1H/AHACZBIuN2pnoEGlUmmAZ1M/4ReyqjWuhwvEAAAkCN++9yoxqy8rF+0qmZ8ydsxqRP8AgBdoYsOdPyhotF/7RfU6idy5jqYc5rdDBkcOJQQMhc4EPJADQBPO2zSOqaSxIbakErgvOaxMBsaam/P+FbE08rgJs1oFtogbehXK2Jfcd0TOgGsCTbaTIQ6j5jNoRI8bW8UKwdHDXc0tE6tII4OsB0geCKXtAphpNruINwSJI6FLFwmTJOpt+3YOkea7SeXNeLWFt9/VaYkWQ1O+0AxBdOsTt98UJxLs0ESbgGL70APgzO/krsacwMGNZi2s6q6oluxuq4zlP7W+iXfU7hGv2Me+qHiaxzTyPkhkyQeaaQNhmOmBut4e5UDhmG6fqh4V0GTs9+itXIhhG8/dOtis7iDMxqCfVLZyulxjxVJToTOtMmVd5mOSo2IVXJgEnunmuA2CpK7mSoBlj4BHD2Fys2OqXY7VFrPloSrY7CSA0cTqpRu6dgk34IOf5QqueZibaJpAmg+aBI2+4Vy7MWjkEA7uEq9F2u/Z1UtDTGfiwDGk++a4ahFzt2+qG9sMbfWfJQy4ZrRZoA2Dcoods5UeXHd7tbaj0JJOUAZRckSTfyvsCJTAIaRAJm/Bg+6thmAMeTO/oEm9UNLYHabSBJ87LmeXFzpIGwWN/ZVi7Ky36jETwv0myAHuaAI19xKaQmxitTgSJhxsdwGs7tUGg/Ufusei4KmYOZvv1FwFRghwVJaFezj7Tw+6vVvDpvEclSqy0yO9e/NS+UczxlUIpWfLr6W9AFQu2DoUWowa+4ul2hNCCh3dPEjyVsQdBuv6IT3kxOwAKTZFAcLrdVzMoXKqYUWYJsrPEFVYrP0S9gyoUBXAuJhQQHu81KmgVToFBsQARhgtG5WMOfwVKXzBXo/M7kUmNFarpM75V6bbHSZClbUckNnyu6eqXoPYziXDIwRe8+KmGcMsHQGfIrvaOrf7Qhs/2zzCVaHezQw1OXNAIjJedmY3S+KriIZIbcGdTvJTJ0HTyCz/ANH/ACKhLY29HGvmGnYDHPW6vUfaNx9QlUQ/daUTZGGL7AVZzru6qM+U/wB65V280CKVTYXR2Mhrb6yUs5FebBAWNVCCJ2ZUgwa8k0/5OiTanEbOlc2dVxq6PqmIqpChUTA//9k="),
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),
                ),
                
                   
                //2nd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    
                    image: DecorationImage(
                    image: AssetImage(
                      'assets/img1.jpg'),
                      fit: BoxFit.fill,
                    ),
                    ),
                    
                ),
                
                  
                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    
                    image: DecorationImage(
                    image: AssetImage(
                    'assets/2asl.jpg'),
                    fit: BoxFit.fill,
                  ),
                  ),
                ),
                  
                //4th Image of Slider
                // Container(
                //   margin: EdgeInsets.all(6.0),
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //     image: AssetImage(
                //     'assets/12345.jpg'),
                //     fit: BoxFit.fill,
                //     // borderRadius: BorderRadius.circular(8.0),
                //     // image: DecorationImage(
                //     //   image: NetworkImage("https://data:image/jpeg;base64,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"),
                //     //   fit: BoxFit.cover,
                //     ),
                //   ),
                // ),
                  
                //5th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                    image: AssetImage(
                    'assets/maps.jpeg'),
                    fit: BoxFit.fill,
                    // borderRadius: BorderRadius.circular(8.0),
                    // image: DecorationImage(
                    //   image: NetworkImage("https://data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgWFhYYGRgYGRgYHBgZGhoYGhwcGhwcGRwcGhkcIS4lHB4rHxkYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHhISHzYrJCs0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIAPsAyQMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAADBAACBQEGB//EADoQAAEDAgMFBgQFAwUBAQAAAAEAAhEDIQQSMUFRYXGBBSKRobHwEzLB0QYUQlLxYnLhBzOCkqIkI//EABkBAAMBAQEAAAAAAAAAAAAAAAABAgMEBf/EACQRAAICAgICAQUBAAAAAAAAAAABAhESIQNRMUETBDJhgfCR/9oADAMBAAIRAxEAPwD6+CrgobSrhMRddXAuhIZ1RRRAEUUUQBFFFEARRRRAEUUUQBFFFEARRRRAEUUUQBFwqLiAOFUKsVQpiOOKqo5VlMks0q4KE0ojSkNBAVZUBVwkM6urgXUDIooogCKKKIAiiiiAIooogCKKKIAiiiiAIooogDhXCouFAFSquXSqOTEyriqSuuKpKZJ1pRWlKurAbei4zFjaEUxZJDwKuCl6ddp2o0pFJhF1LuxLRaUGtjNjfH7IUWDkkPKLJdiXH9Soys4bSqwZPyI2UOrUAEpaljJEGJ37CuV82s7oG5LHexuWrRb83eLBMsfIkJcOaXSRs2q1SqNAQN10NDT7Yyos1tR0nvRK6/FPaLgHijFizXs0VQ1Aso41x1QziiqXGyHyr0bAqhWzhYf5spiniZ2ocBLlNUFRJseUVpKlxNVKw6qVQkobid6VBYQqjihOqHehurp0JyCOKqgmuq/HTpiyRisxwdoQeqL+Y4rxdPEEaFPUO0HDbPNdGJzZHrqNSdq0WY8C0yLBeRw2OnbB4p5mKUSjZcZ0bWIrtc6QhufKzBiERmISUROdseldlKNrogqp0KxiV3Od5QBUVg9FDTCSrGpCDnWR+IO2xh2AlrnF37QLDeSfDaok1FWzSEXOVI3RVOxcdUJ1K+W4n8XveQQ9zXNdZozCZOyDBIFoIuvd/h7tM16WdwGYHKSAQHcRKmM1J1RpycLhG7s0y1VLVeVFrZzUDyroarlROwovQrubobbtiYfj5EZb70mqPKnFMpSaVIu6sd5VxjN4SpKo4p4oWTND8w07UJ9VIOKC553oxQsmPvqofxVnOqkKvxyqxFkeSplHDdyTY0jTRHpv3qgaG2VE5SrkbUjSdKYY3cixUadPETqjtqFZ9NM03xqiwoaa9GFRKZ592TLAANUNjSsK129R1ZBfUlDlJLsG+hoVV43/AFBxLCGMB74AJEbCSQeJEH/txW5je2KVKznguH6RFo1kmwXhu3u3KNd85ASABILoMTF5Em5vHisuWOSSXZ0fTSUW3JPxquzzYrXkz4lfTf8ATqt/875fmJqExN22HrdfOH/DOrHM3EGf/J2L6T+EGUW4eaTy/M6XEiC0wAGxuAGu2/ITGDyNOWacHf6PXCorCosw1FBXW+Jx5Gp8RcNRZwxCnxkYhkaPxFUuSBrrrcSjEMhpzkNzkJ1VCdVSoAr3ID3qj6iA+oqolhHvQ8yC+oqfERQrPKMxQjVFpYkbbrOp00xTpJpI0ZpU8Q0HcmW4gb7LM+FtRaOGcbopEs124sb0T86NyzaVA6JsYcjUJ0ibY7SxQ3FGbiuHmlKTE1TopaDY1RqA62RgZsBPIpQsWP212yWgspvEggOc3UGQCJ2Wnik9+C4nivxP2ScPVyh2dhktcSSbkkh52uE67dVjOdwW1Wq57kkyXXcZMDiUj8ALGUOjrhPWxMeK9f8AgOsynUe6o5zQ9oaB+mZmSN+7mVgMpAJ/CNYXQ95Y2NQM38eBVQjTtk8kslR9ScARLTIOhCE5pXgD2sKReGPc4MgsfBbIj9TTGmnGOK9l2RijWose6JcO8BscCQfMLSzmlD2Mlck8UU0zG/mqFscE8iMTkncVU1Fxz1RznbvqhMGXNUhT4qE+odrUJ727RCBoM56C96H8Qb/NVc88EDKPeqfEO5DqVDuQ/icECoz2UhuTLKSz2dptBgtOsLRoYppEx6LLNGzhLoKzDo1LColKu3gnKVZm8IzXZOEuilLDBMswytTrMJ1CBie3aDCGudcmLA24myT5EvLGuNv0PU8OEduHCWwHbFCoYY8E7srvstRtdm8/9XfZL5F2P430Liivj2NxhFSs1k9+pUMza7t28XuvsOPxzG0ajw8DKxxkg2MH6r4hiSPiO2jMdut96HP2jXjh5sdYQ1uXU6GPQKwKUY433SbI7Hq0xOJd7ZEJZ1R0RtF52wjuegVHix2jz3pMcUCfULiN8+yvpH+nlXPRfTNyx+Yf2uj6yvmRIm2nHYvZ/wCnWMyYnKSIeMp+nmpi/I+SOj6T+VUOETnxmDaFX84zelkZ4Ge/BbYVTheC0HYpm/yQG45jrtcCJiQJuOqeYvjEn4JAqYHdK0n4xg2hBfjW7wjP8h8b6MmpgiP4S7sKQtarjmbx5fdKv7QZMS3xCfyIXxszXUHIfwHbk7U7QEwMviCqfnhu9EZoPjZ4zE9lOOXL1k7hYrWwdMtYBlJgbSNeJVmtbvB6orMvBea5Ps9XFdDNP+0CN0HUpjO791/6Wt+pQKbR/SmWNI2hLJ9jwj0GbirgXFpm0crHX7Lw3bOBxD6zy2m9wLiQQIBXuQY/UF1rx+7zSU2nd2DgmqqjA/DPZ2IpuBeyASAYc0QIibEyV6x+HBYWZnRfQgETqRZBp1P6hyVxU4pSnbsqMK0ZH4hoinhagBJGUCXEE3e2f0r5jVN5HNfR/wAZV/8A5n8XMG79QXzYldXA7j+zn5VUv0OCcszqYiOe1cDkIyGiXTN8u4cdy6HWXSmc9F3PQXOUcVVJsqKOAJ/s3FGm9r/2kOG/ukFINMGytm3pJ0Nqz61WdjHXZ+XEzEmodbg6DYlqWGx4JJqYczA+V1t/inuz3k0abiLljCeZaE3O2PJeddaOzH2Js/MQ0P8AhnXNBcARfQRySOAwrqBdDJDiTIde7pAAygAAE+C2HTwVHIQ6EzWfn+RoZFvmzTxEQBqs/tXD1qhGSpkaIOUD5jH6nawtZ5S9R/LimhMxmYbEh2Y1GREBoBgHnt6qO+NYl7JAM9ycx2HXuxu4LReJ0hAeeATELuqun5WgdJPTYqfFdw8B91d7+HoqydyYGJSebySZHVMNqOmBaUjRfNwLzbidfRMMxAl1/lEX0kfwk4jUka9Kv3ZJjQDhtjy80Kpj8u2ySrVYcxg1ME83QFXFPBc5rW2k97x03CFDj2UpdDQ7RkAzrFrz7+6Yo4kERJjbvlZeGwm03uCOBT9JkbhyCmUV6Ki+xwYo23xfRGoYtzpk+f1SrLi5GzwTdFzNh0geUrNopNGV+JXF9BwDXHLD5N9NeViV4lfU31aZaWkSHCDfWbR6r5xiOzyyo1hMy4if7XEX6AH/AJLs+llrE5+eO8i1PBFxAuARObYBrdBxLWg5WaDVx2n6BOYms5ssBtoeizXFd0qXg4o2/JFVRRSaEKi6UTC0872N/c9o8SApboaVn1+hVygNy2AAHIBMNrDcsr83EX103wbooxViYK8rI9DEde8awqlw3EJFuIgd4/xsVc5Nwba7ZhUpMlxQ25zUvUe3elXh2+ff8JBzbHf/ABf1V2TQ++oz9yC9k/q+qz8ouo6rysYlNNiaGXUxvVfhjela+Jgb7Jb82f6leyRerTgM2QflAm5Np2CyM/AyIB1J5wYk8NAihwENAsYnpf1Rmvi+093j71Q5BiUdQOfNE2F4tNx1gNXGN7psM8E6RdwIHqE9SO83O2LbY9V3JBMaa+dlLZSRlYNji8gzABdwNtOckBXFF7myDqekan1nxWk/DBzH7C6LixF7AdcyZp0IbMXAAE2H8QZUsKMptB8hve04wZuPIeadZSygTaYMa6kEX6rRNPLL8gJNu9JFhuHAK5oB7jqAAABugRb3uUSSLTMD8u6Xd4wQ2Bs+YOP26rI7Xphtam68OaQCO8S8DLfoW+K9m3A94XjI2dNb6eM+SAzsZj25XiYLS1xFwRDgeB2KuObhJNinFTjR88qze0DRLFb3adBrqjnvD4EudeJiAACdJMbdNLwsTFB03aGyAQ0CAARa3LqvQjyKRxvjxdHBTcXBsHMYgbTmgjxkeKovRU6AbiHPB+Wk57QNQ0U2taecuNv6Z2rEw2GmMxgKVNMpxoAVp/huhnxDNzZeeQ/yQm29kfEY4UmuLm5SALTJgzJgmJ89VtfhnsF9EOe+A9zcoZIsM1wTxjyCifLHF9lw43aNVlMucSNCY6TCcdRsN2pjeqsZlJDfG+y5XajyRpIsIGvFefqzr9HBh7y43ud0q7gAFX4u/p6JZ9eZM2EifAD18laJLVW7iNuvNZz5JPPSOv1CM95nXfYcEN1SJ338lSsTA1mGNY+yG1jbzqu1K4Ou/wB/VKurgXi270VJEsM9oix+vuyX+HxVX1DPG30Ujh6/ZVsnRM8giYN4O4Rr0hFa2dNMoM7TPvzWa14DCP1ab7ArQwzyGxy8IRKIJjeewMbT9gmA+I5gHoP4ShNwBrrPWfqfBVZmLyenO6zaLTRq/E096CB5ooqXiLXPhaPe5JVHCDB0cP8AIVaTi3KJuAZ4n3KmTGka9CqCI3Ejf71KKHmJGk8Vn0KgIB0k+JzSmDWA7tsoEnnqfsk/FDXmxxroEkzP+PsusxDe9I+Uz5D3CUdWkARsHS0+S5XeMsDQkCf7rfVS3spLR5zHOY9z3RIZcgiQ46ACLmCQNLzAlYHaTxmbmALsjQ4SHQZMgkbfutuu9lJ+SXSQGuJDgAO6STHG0rI7Goh1ekC3TMXA6S0vcDfXVi7IaWXo5p23QzjGvY9xe5rXPosBaJJDXd0gWtGS/wDcl6OUCWy47Ds8YJW7+JaDJY43c5uTUXLXFxkm0XAWG8FpMm/9I/8AzbwgQD4lOMskDVM9L+FSC55n9g0A1zbNdi9FzH6jb7dfosD8MDuvMgkZDLdP1WBOz7rebVBBcNsEA8BP18lzT+9m8ftI91yOJnrcX8FG1BqNDMHn7CESZJO0yOgn1Kq+oCADYGw6IQmgdTTiDB4Fx+kpbEP+ax3AcgCL+9EzVMstr/EE9LIT+83qeG+FZIm6jDonZJk++Hmh/DkuEmTmjmS4fVEq/NANz95hCrEmSLRmB4mLEpp0IzocAcw2gRuvP1CEGAuIO7016StGpTnNzmP6rH6eaTo04JnV3Xh91aogWxL+/rr/ABPqu/EH9XmjU6IjMbmZ4zx8Su5W7lVImzLq0xa+oLuXDgnWVLhs2gHwSFIZngbBPgNPonXuzd4GLOHglIqLCCuC5sazz3x74p3DVQWk8denksR8sd/y9JTeGeDTI23Nuv2USj4ZSfoeJl0jd0n3Ksx7jAF8zY6Tc8NEMslthEt02Xgn6qVC4NYBoDJ36rM0ZrtYO7yzEcfcoFWrfLvueJ18PuuMry0mJNh9UqH5YkSXFxMa2sAOGqWg2HqYsMJJM5zkE6Tm+v3TVKuTB3Sd2Y3aP/R/8rKqXexjoIaNDHzuIF9oIkrTqBrGjOZLS4yNplx57QEmlaGm9mfjqTHNfUe8uaHZnMGjiLNDuEuJIF+9wCz+yWPfUbWmTmeXg7AIAAPCPRamPY6p8NgYIzNc42AsWk5htFz/AOVGObTDgwANaJbtlz3OBdv2D02K3PVf1EqO7/rD9otbUbJ1aAGDZJcBfxPmsLEsYx4aJIPyh225bbqCtprw6mHxENJLdSJaY594T0WW95zsdlJDWggDUXOUce+5Vxt0Kfk2Oz+5RL4PetcWEGLRxzXTzcV3GkQZkxPMD0WNj6+Sgxmlx4iZnxXKFaaOa5hzW7gdZv4LOUW3ZSklo3a9WY/tgnZMHbvt5pR9cEX8+EDpc+SSbis5flcJzTHGII81WudbxeQIJ0E6btPJGLsMlRpCqRc63JHTh7sqPxE6EW2c/wCVmS6zgQRfMJnUWnhPqo7EWJjYfEe/cKkhNjjqt8o1BN+dkF2jtx+kfdArPINjcT4e4V8TW1A/uEcYP3Voku91iRNhPUIRF7+515oFOuRrvI9I9ECtie80cRPT+E0n4JYyx2p3knd6Lsjh4BK5zmjfbx0Q8x9kK9k6M6k+MzRqfum8M4iDuke9wlJ0XAS46kx4ozH5SZnvR0TkhRZ3GOJcziJHUyrEhrZO2BHX7Kpe0gO/YDlG+P4Q8Q4yRsJb53KVeh37NhtcvZAtsG7iivrtuyb5QOGmiycNiYBJ2WG/iiucTBjUkc4WTjWjVSs1GszdyY0I4QNqvXoiAQbsGYzG2fBKYav3iDcxu37FV+L7rrgF1h0MKMWO0FweC7+aXQx0yb2He+ydfiAS5xHdYM19pItPiEnh8VZ+bTRu+CIt6pd9XMCJsSRJ3SCTx0KMW/I7S8DmKxGb4Yky4SRO/vd4/tBknflCp2m8gBxEBrGw0Dkbx8oiAr/Da5+U/KO6YG5rJg7O8Igb1Mc1r3lo0MF26ws0cB6pJrX4Bp7LUwXUA0jKRmubaCLXk6nxS7KLy8G7WtDZ5jRoFry6eGqLUxQY52WS+QAXbLAjK3YBI68ku6rlYxmWQcxJ1lzSTqdBYc+Oyo3/AKKVAcYxzy+NZBA1mQGm+2152wea6yo4ZILhcki40c6GnnlvzKXwtQsDu9AFzYEk2BEbBY+IR8S4OJdEQIDQbnM2GDnpdaPzRmuwYeWvA2SZmx3eMgJ/H1S1zTY5g0zNr2MpGjLmZyASwZgD/wBbjaO6D0Cb7XrS2mQA7uXI6TpsR7C9C1GrDmjdnHTX7Hoih/dgbDmHmCPAhZ73Q+3dgyDq2dAbzaPRGqVzmDr65HcLwfoevBPEVjzHy0zrGYacNvI+iDUqQCd3opjamVrQLQ0epJSr3wJ3ehshRByLB8meM+SE99w7jI5qhkSeEekeSoHCWjiB0VqJLYyK09HeV49UKTw8EBz7+HTh6o2cJ0Kxeq4NAGpnNI0UxL8xHKUs+Bx3I9R4E78sK6JslN5LY47USkJuTYn3ZCYO7s1JnooK2nC6TQ0y9QieEFMMfrwACWDBGZR7ogKWrGnQ1RrHPKO85obYEEmL6LOpvhwjgiuxBBPvTRS49FKXY9iXNLi7Y0AQPBcwzcwzHRpgDkZPTXxSOc97ft280f4lmgGAAfMXPFS40qKUk3ZtYcQxzyZJPd9ZJ5nyS1H/AHACZBIuN2pnoEGlUmmAZ1M/4ReyqjWuhwvEAAAkCN++9yoxqy8rF+0qmZ8ydsxqRP8AgBdoYsOdPyhotF/7RfU6idy5jqYc5rdDBkcOJQQMhc4EPJADQBPO2zSOqaSxIbakErgvOaxMBsaam/P+FbE08rgJs1oFtogbehXK2Jfcd0TOgGsCTbaTIQ6j5jNoRI8bW8UKwdHDXc0tE6tII4OsB0geCKXtAphpNruINwSJI6FLFwmTJOpt+3YOkea7SeXNeLWFt9/VaYkWQ1O+0AxBdOsTt98UJxLs0ESbgGL70APgzO/krsacwMGNZi2s6q6oluxuq4zlP7W+iXfU7hGv2Me+qHiaxzTyPkhkyQeaaQNhmOmBut4e5UDhmG6fqh4V0GTs9+itXIhhG8/dOtis7iDMxqCfVLZyulxjxVJToTOtMmVd5mOSo2IVXJgEnunmuA2CpK7mSoBlj4BHD2Fys2OqXY7VFrPloSrY7CSA0cTqpRu6dgk34IOf5QqueZibaJpAmg+aBI2+4Vy7MWjkEA7uEq9F2u/Z1UtDTGfiwDGk++a4ahFzt2+qG9sMbfWfJQy4ZrRZoA2Dcoods5UeXHd7tbaj0JJOUAZRckSTfyvsCJTAIaRAJm/Bg+6thmAMeTO/oEm9UNLYHabSBJ87LmeXFzpIGwWN/ZVi7Ky36jETwv0myAHuaAI19xKaQmxitTgSJhxsdwGs7tUGg/Ufusei4KmYOZvv1FwFRghwVJaFezj7Tw+6vVvDpvEclSqy0yO9e/NS+UczxlUIpWfLr6W9AFQu2DoUWowa+4ul2hNCCh3dPEjyVsQdBuv6IT3kxOwAKTZFAcLrdVzMoXKqYUWYJsrPEFVYrP0S9gyoUBXAuJhQQHu81KmgVToFBsQARhgtG5WMOfwVKXzBXo/M7kUmNFarpM75V6bbHSZClbUckNnyu6eqXoPYziXDIwRe8+KmGcMsHQGfIrvaOrf7Qhs/2zzCVaHezQw1OXNAIjJedmY3S+KriIZIbcGdTvJTJ0HTyCz/ANH/ACKhLY29HGvmGnYDHPW6vUfaNx9QlUQ/daUTZGGL7AVZzru6qM+U/wB65V280CKVTYXR2Mhrb6yUs5FebBAWNVCCJ2ZUgwa8k0/5OiTanEbOlc2dVxq6PqmIqpChUTA//9k="),
                    //   fit: BoxFit.cover,
                    ),
                  ),
                ),
  
          ],
              
            //Slider Container properties
              options: CarouselOptions(
                height: 600.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 600),
                viewportFraction: 0.8,
              ),
          ),
        ],
                // body: Center( 
                //     child: _widgetOptions.elementAt(_selectedIndex),
                    
                ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
            backgroundColor: Colors.red,
            
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.mic_none),
          //   label: 'Mic',
          //   backgroundColor: Colors.red,
            
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.keyboard),
            label: 'Keyboard',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'User Manual',
            backgroundColor: Colors.purple,
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.settings),
          //   label: 'Settings',
            
          //   backgroundColor: Colors.pink,
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notes),
            label: 'User Notes',
            backgroundColor: Colors.pink,
          ),
          
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
             
      ),
      );             
            }
  void choiceAction(String choice){
    if(choice == Constants.Mic_Speech_to_text){
      Navigator.push(context, MaterialPageRoute(builder:(context)=>new MicDemo1()));
      //print('');
    }else if(choice == Constants.Mic_Text_to_Speech){
      Navigator.push(context, MaterialPageRoute(builder:(context)=>new MyAudioApp()));
      //print('Subscribe');
    }else if(choice == Constants.VideoStreaming){
      Navigator.push(context, MaterialPageRoute(builder:(context)=>new Videostream()));
      //print('SignOut');
    }
  }
}

class SettingsDemo extends StatefulWidget{
  _SettingsDemo createState() => new _SettingsDemo();
}  
class _SettingsDemo extends State<SettingsDemo>{
  //get downloadUrl => null;

  //get _x => null;

  
  Widget build(BuildContext context) {

  // FirebaseFirestore.instance.collection("users").doc().set({
  //   "name":"Deeksha"
  // });
  CollectionReference record = Firestore.instance.collection("users").document("").collection("records").reference();
        record.add(
            {
          "name":"deeksha"
    }
    );


    //Material loginButon;
        return Scaffold(
          appBar: AppBar(
            title: Text('Settings'),
          ), 
                bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8.0),
        child: FlatButton(
                child: Text('Back', style: TextStyle(fontSize: 20.0),),  
                color: Colors.blueAccent,  
                
                textColor: Colors.white,  
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>new SecondRoute()));
                },  
          
      ),
                ),
                body: Center(child: Text('Settings'),)
        );
} 
} 
class MicDemo extends StatefulWidget{
  _MicDemo createState() => new _MicDemo();
}      
class _MicDemo extends State<MicDemo>{
final Map<String, HighlightedWord> _highlights = {
    'flutter': HighlightedWord(
      onTap: () => print('flutter'),
      textStyle: const TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
      ),
    ),
    'voice': HighlightedWord(
      onTap: () => print('voice'),
      textStyle: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
    ),
    'subscribe': HighlightedWord(
      onTap: () => print('subscribe'),
      textStyle: const TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
      ),
    ),
    'like': HighlightedWord(
      onTap: () => print('like'),
      textStyle: const TextStyle(
        color: Colors.blueAccent,
        fontWeight: FontWeight.bold,
      ),
    ),
    'comment': HighlightedWord(
      onTap: () => print('comment'),
      textStyle: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
    ),
  };
  stt.SpeechToText _speech;
  bool _isListening = false;
  String _text = 'Press the button and start speaking';
  
  double _confidence = 1.0;
  @override
  void initState() {
    super.initState(); 
    _speech = stt.SpeechToText();
  }
  String text = 'Press the button and start speaking';

  @override
  Widget build(BuildContext context) {
    //Material loginButon;
        return Scaffold(
          appBar: AppBar(
            title: Text('Confidence: ${(_confidence * 100.0).toStringAsFixed(1)}%'),
        
          ), 
                floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
                floatingActionButton: AvatarGlow(
                  animate: _isListening,
                  glowColor: Theme.of(context).primaryColor,
                  endRadius: 75.0,
                  duration: const Duration(milliseconds: 2000),
                  repeatPauseDuration: const Duration(milliseconds: 100),
                  repeat: true,
                  child: FloatingActionButton(
                    onPressed: _listen,
                    child: Icon(_isListening ? Icons.mic : Icons.mic_none),
                  ),
                ),
                bottomNavigationBar: Padding(
                padding: EdgeInsets.all(8.0),
                
                ),
                body: SingleChildScrollView(
                  reverse: true,
                   child: Container(
                    padding: const EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 150.0),
                    child: TextHighlight(
                      text: _text,
                      words: _highlights,
                      textStyle: const TextStyle(
                        fontSize: 32.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,  
                        fontFamily: 'DancingScript'
                      ),
                    ),
                    ),
                ), 
        );  
            }
          void _listen() async {
              if (!_isListening) {
                bool available = await _speech.initialize(
                  onStatus: (val) => print('onStatus: $val'),
                  onError: (val) => print('onError: $val'),
                );
                if (available) {
                  setState(() => _isListening = true);
                          _speech.listen(
                            onResult: (val) => setState(() {
                              _text = val.recognizedWords;
                              if (val.hasConfidenceRating && val.confidence > 0) {
                                _confidence = val.confidence;
                              }
                            }),
                          );
                        }
                      } else {
                        setState(() => _isListening = false);
                        _speech.stop();
                      }
                    }        
}

class SpeechApi{
  static final _speech=stt.SpeechToText();
  static Future<bool> toggleRecording({Function(Text) onResult}) async{
    @required Function(String text) onResult;
    final isAvailable=await _speech.initialize();
    if (isAvailable){
      _speech.listen(onResult: (value)=>onResult(value.recognizedWords));
    }
    return isAvailable;
  }
}

class _MyHomePageState extends State<MyHomePage> {
      FloatingActionButton floatingActionButton;
      
      String text = 'Press the button and start speaking';
      TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

      @override
      Widget build(BuildContext context){
        
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(30),

            child: Text(
              text,
              style: TextStyle(
                fontSize: 32.0,
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontFamily: 'DancingScript'
              ),
            ),
        );
                        
                        final loginButon = Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(30.0),
                          color: Color(0xff01A0C7),
                          child: MaterialButton(
                            minWidth: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                            //onPressed: () {},
                            child: Text("Logins",
                                textAlign: TextAlign.center,
                                style: style.copyWith(
                                    fontFamily: 'DancingScript',
                                    color: Colors.white, fontWeight: FontWeight.bold)),
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder:(context)=>new CustomKeyboardDemo()),
                                      );
                                      
                                    },
                          ),
                          );
                        
                
                        return Scaffold(
                          body: Center(
                            child: Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(36.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 155.0,
                                      child: Image.asset(
                                        "https://images.unsplash.com/photo-1597042343165-57d0e98546b8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8c3VwZXJ8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    SizedBox(height: 45.0),
                                    loginButon,
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ), //FloatingActionButton floatingActionButton, 
                        );
                      }
          Future  toggleRecording() =>SpeechApi.toggleRecording(
            onResult: (text) => setState(() => this.text = text as String),
          );
      }
          /*wallpaper(BuildContext context){
            return Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Image.asset(
                "https://images.unsplash.com/photo-1597042343165-57d0e98546b8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8c3VwZXJ8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
                fit: BoxFit.cover,
              ),
            );
          }*/
  
  

class _KeyboardDemoState extends State<KeyboardDemo> {
  TextEditingController _controller = TextEditingController();
  bool _readOnly = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        title: new Text('User Notes'),
      ),
      body: Column(
        children: [
          SizedBox(height: 70),
          TextField(
            controller: _controller,
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
          
          IconButton(
            icon: Icon(Icons.keyboard),
            onPressed: () {
              setState(() {
                _readOnly = !_readOnly;
              });
            },
          ),
          Spacer(),
          Container(  
                    margin: EdgeInsets.all(25), 
                    alignment: Alignment.bottomCenter, 
                    child: 
                    FlatButton(  
                child: Text('back', style: TextStyle(fontSize: 20.0),),  
                color: Colors.blueAccent,  
                
                textColor: Colors.white,  
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>new SecondRoute()));
                },  
              ),

                ),
          CustomKeyboard(
            onTextInput: (myText) {
              _insertText(myText);
            },
          ),
        ],
      ),
    );
  }

  void _insertText(String myText) {
    final text = _controller.text;
    final textSelection = _controller.selection;
    final newText = text.replaceRange(
      textSelection.start,
      textSelection.end,
      myText,
    );
    final myTextLength = myText.length;
    _controller.text = newText;
    _controller.selection = textSelection.copyWith(
      baseOffset: textSelection.start + myTextLength,
      extentOffset: textSelection.start + myTextLength,
    );
  }

  void _backspace() {
    final text = _controller.text;
    final textSelection = _controller.selection;
    final selectionLength = textSelection.end - textSelection.start;

    // There is a selection.
    if (selectionLength > 0) {
      final newText = text.replaceRange(
        textSelection.start,
        textSelection.end,
        '',
      );
      _controller.text = newText;
      _controller.selection = textSelection.copyWith(
        baseOffset: textSelection.start,
        extentOffset: textSelection.start,
      );
      return;
    }

    // The cursor is at the beginning.
    if (textSelection.start == 0) {
      return;
    }

    // Delete the previous character
    final previousCodeUnit = text.codeUnitAt(textSelection.start - 1);
    final offset = _isUtf16Surrogate(previousCodeUnit) ? 2 : 1;
    final newStart = textSelection.start - offset;
    final newEnd = textSelection.start;
    final newText = text.replaceRange(
      newStart,
      newEnd,
      '',
    );
    _controller.text = newText;
    _controller.selection = textSelection.copyWith(
      baseOffset: newStart,
      extentOffset: newStart,
    );
  }

  bool _isUtf16Surrogate(int value) {
    return value & 0xF800 == 0xD800;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class CustomKeyboard extends StatelessWidget {
  CustomKeyboard({
    Key key,
    this.onTextInput,
    //this.onBackspace,
  }) : super(key: key);

  final ValueSetter<String> onTextInput;
  //final VoidCallback onBackspace;

  void _textInputHandler(String text) => onTextInput?.call(text);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
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
        children: [
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
            value: 'assets/images/Z.png',
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
    this.value,

    this.flex = 1,
  }) : super(key: key);

  final String text;
  final ValueSetter<String> onTextInput;
  final int flex;
  final String value;

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
              //child: new Image.asset(value,fit:BoxFit.fill),
            ),
          ),
        ),
      ),
    );
  }
}
