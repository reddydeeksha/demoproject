import 'package:flutter/material.dart';
import 'package:majorproj2/settingsdemo.dart';
import 'about.dart';
class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children:[
        UserAccountsDrawerHeader(
          
          
          accountName: Text('oflutter.com'),
          accountEmail: Text('example@gmail.com'),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.network(
                'https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
              ),

              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://cdn.britannica.com/03/75503-050-F65891FA/volcanic-cone-Japan-Mount-Fuji.jpg'
                  ),
                  ),
               ),
                  
        ),
        
        new ListTile(
          leading:Icon(Icons.favorite),
                    title:Text('Favourites'),
                    onTap:() => {
                      Navigator.of(context).pop(),
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context)=>new MyApp())),
                    },
        ),
                  new ListTile(
                    leading:Icon(Icons.people),
                    title:Text('Friends'),
                    onTap:() => null,
                    // onTap:() => {
                    //   Navigator.of(context).pop(),
                    //   Navigator.push(context, new MaterialPageRoute(
                    //     builder: (BuildContext context)=>new SettingDemo())),
                    // },
                    
                  ),
                  ListTile(
                    leading:Icon(Icons.share),
                    title:Text('Share'),
                    onTap:() => null,
                    
                  ),
                  ListTile(
                    leading:Icon(Icons.notifications),
                    title:Text('Request'),
                    onTap:() => null,
                    
                  ),
                  Divider(),
                  ListTile(
                    leading:Icon(Icons.settings),
                    title:Text('Settings'),
                    //onTap:() => null,
                    onTap:() => {
                      Navigator.of(context).pop(),
                      Navigator.push(context, new MaterialPageRoute(
                        builder: (BuildContext context)=>new SettingDemo())),
                    },
                    
                  ),
                  ListTile(
                    leading:Icon(Icons.description),
                    title:Text('Policies'),
                    onTap:() => null,
                    
                  ),
      
                ],
      ),
        
            );
          }
        
          //ListTitle({Icon leading, Text title, Null Function() onTap}) {}
}


