import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:heat_dance/view/splash/splash_screen.dart';
import 'UI/Search.dart';
import 'UI/calls.dart';
import 'UI/camera.dart';
import 'UI/chat.dart';
import 'UI/status.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();

  runApp(HomeScreen());
}

List<CameraDescription> cameras;


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen>
   {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/search': (BuildContext context) =>  Search(),
        '/home': (BuildContext context) =>  Home(),
      },
     home: SplashScreen(),
    );

  }


}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin  {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }
  void handleClick(String value) {
    switch (value) {
      case 'Logout':
        break;
      case 'Settings':
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.black87,
        title: Text('WhatsApp'),
        automaticallyImplyLeading: false,
        bottom: TabBar(indicatorColor: Colors.black87,controller: _tabController, tabs: <Widget>[
          Tab(
            icon: Icon(Icons.camera_alt),
          ),
          Tab(
            text: 'CHATS',
          ),
          Tab(
            text: 'STATUS',
          ),
          Tab(
            text: 'CALLS',
          ),
        ]),
        actions: <Widget>[

          IconButton(
            icon:  Icon(Icons.search, color: Colors.white,),
            highlightColor: Colors.white,

            onPressed: () => Navigator.of(context).pushNamed('/search'),
          ),

          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'New Group', 'New broadcast', 'WhatsApp Web', 'Starred messages', 'Payments', 'Settings'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraHomeScreen(cameras),
          Chat(),
          Status(),
          Calls(),
        ],
      ),
    );

  }
}

