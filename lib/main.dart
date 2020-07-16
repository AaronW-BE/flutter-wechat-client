import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("wechat"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){},
            ),
            PopupMenuButton(
              icon: Icon(Icons.add_circle_outline),
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry<String>>[
                  PopupMenuItem(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.message, color: Colors.black26,),
                        Text("发起群聊")
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.supervised_user_circle, color: Colors.black26,),
                        Text("添加朋友")
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.find_in_page, color: Colors.black26,),
                        Text("扫一扫")
                      ],
                    ),
                  )
                ];
              },
            ),

          ],
        ),
        body: IndexPage(),
      )
    );
  }
}

class IndexPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          FlatButton(onPressed: () {  },
          child: Text("ok"),)
        ],
      ),
    );
  }
}