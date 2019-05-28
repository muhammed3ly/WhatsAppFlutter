import 'package:flutter/material.dart';
import 'package:whatsapp/pages/callscreen.dart';
import 'package:whatsapp/pages/camerascreen.dart';
import 'package:whatsapp/pages/chatscreen.dart';
import 'package:whatsapp/pages/statusscreen.dart';

class MyHomePage extends StatefulWidget {
  final String title = "WhatsApp";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this,
        initialIndex: 1, length: 4);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text('WhatsApp'),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: "CHATS",),
            Tab(text: "STATUS",),
            Tab(text: "CALLS",),
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0),),
          Icon(Icons.more_vert),
          Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0),),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallsScreen()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff25D366),
        child: Icon(Icons.message, color: Colors.white,),
      ),
    );
  }
}