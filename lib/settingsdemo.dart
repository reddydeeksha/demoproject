import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:majorproj2/emergencyfile.dart';
import 'package:majorproj2/location1/src/screens/home_screen.dart';
import 'package:majorproj2/location1/src/screens/home1_screen.dart';
import 'package:majorproj2/page/profile_page.dart';
import 'package:majorproj2/themes.dart';
import 'package:majorproj2/utils/user_preferences.dart';



class SettingDemo extends StatelessWidget {
  static final String path = 'lib/src/pages/settings/settings1.dart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title:Text('Settings',style: TextStyle(color: Colors.black),),
      ),
      body:Stack(
        //fit: Stackfit.expand,
        children: <Widget>[
        SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              margin: const EdgeInsets.all(8.0),
              color: Colors.purple,
              child:ListTile(
                onTap:(){
                    
                },
                title: Text("Deeksha Reddy",style: TextStyle(color:Colors.white
                ,fontWeight: FontWeight.w500,),),
                leading: CircleAvatar(
                  //backgroundImage: CachedNetworkImageProvider(avatars[0]),
                ),
                trailing: Icon(Icons.edit,color: Colors.white,),
              )
            ),
            const SizedBox(height:30.0),
            Card(
              elevation: 8.0,
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
              margin: const EdgeInsets.fromLTRB(32.0,16.0, 32.0,16.0),
              child:  Column(
                children: <Widget>[
                  
             
              ListTile(
                leading: Icon(Icons.lock_outline,color: Colors.purple,),
                title: Text("change password"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: (){
                  //Navigator.push(context, MaterialPageRoute(builder:(context)=>new Emergencyfile()));
                },
              ),
              _buildDivider(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal:8.0),
                width: double.infinity,
                height: 1.0,
                color: Colors.grey.shade400,
              ),
              ListTile(
                leading: Icon(FontAwesomeIcons.language,color: Colors.purple,),
                title: Text("change Language"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: (){
                  
                },
              ),
              ListTile(
                leading: Icon(Icons.lock_outline,color: Colors.purple,),
                title: Text(" Emergency call"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>new Emergencyfile()));
                },
              ),
              _buildDivider(),
              ListTile(
                leading: Icon(Icons.location_on,color: Colors.purple,),
                title: Text("change Location"),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>new HomeScreen1()));
                },
              ),
              
            
          ],
        ),
      ),
      const SizedBox(height:20.0),
      Text("Notification Settings",style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),),
      SwitchListTile(
        dense:true,
        activeColor: Colors.purple,
        contentPadding: const EdgeInsets.all(0),
        value: true,
        title: Text("Received notification"),
        onChanged: (val){},
        ),
        SwitchListTile(
        dense:true,
        activeColor: Colors.purple,
        contentPadding: const EdgeInsets.all(0),
        value: true,
        title: Text("Received newsletter"),
        onChanged: null,
        ),

        SwitchListTile(
        dense:true,
        activeColor: Colors.purple,
        contentPadding: const EdgeInsets.all(0),
        value: true,
        title: Text("Received offer notification "),
        onChanged: (val){},
        ),
        SwitchListTile(
        dense:true,
        activeColor: Colors.purple,
        contentPadding: const EdgeInsets.all(0),
        value: true,
        title: Text("Received App updates"),
        onChanged: null,
        ),
        const SizedBox(height:60.0),
          ],
        )
      ),
        Positioned(
          bottom: -20,
          left: -20,
          child: Container(
            width: 60,
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
            color: Colors.purple,
            shape: BoxShape.circle,
            ),
          //child: Icon(FontAwesomeIcons.powerOff,color: Colors.white,),
          ),
        ),
        // Positioned(
        //   bottom:00,
        //   left:10,
        //   child:IconButton(
        //     icon:Icon(FontAwesomeIcons.powerOff,color: Colors.white,),
        //     onPressed: (){
        //       //LOGOUT
        //     },
        //   )
        // )
        ],
      ),
    );

  }
  Container _buildDivider(){
    return Container(
      margin:const EdgeInsets.symmetric(horizontal:8.0,),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,

    );
  }
}