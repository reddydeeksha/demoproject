import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:majorproj2/location1/src/blocs/application_bloc.dart';
import 'package:majorproj2/location1/src/screens/home_screen.dart';
import 'package:provider/provider.dart';



class HomeScreen1 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ApplicationBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: HomeScreen(),
      ),
    );
  }
}