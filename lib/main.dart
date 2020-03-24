import 'package:flutter/material.dart';
import 'package:wechat/loading.dart';
import 'package:wechat/home.dart';
import 'package:wechat/search.dart';

void main() => runApp(WeChat());

class WeChat extends StatelessWidget {

  final Map<String, WidgetBuilder> routeTable = {
    
    "home": (context) => HomePage(),
    "search": (context) => SearchPage(),
    // "charts": (context) => Chats()
    // "contacts": (context) => Contacts()
    // "discover": (context) => Discover()
    // "profile": (context) => Profile()
  };

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "微信",
      theme: ThemeData(
        primaryColor: Color(0xff303030),
        scaffoldBackgroundColor: Color(0xffebebeb),
        cardColor: Color(0xff393a3f)
      ),
      routes: routeTable,
      home: LoadingPage(),
    );
  }
}
