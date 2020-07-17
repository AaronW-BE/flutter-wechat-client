import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: AppBar(title: Text("wechat"), actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("ok");
            },
          ),
          PopupMenuButton(
            icon: Icon(Icons.add_circle_outline),
            offset: Offset(0, 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                PopupMenuItem(
                  height: 40,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.message,
                        color: Colors.black26,
                      ),
                      Text("发起群聊")
                    ],
                  ),
                ),
                new PopupMenuDivider(),
                PopupMenuItem(
                  height: 40,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.supervised_user_circle,
                        color: Colors.black26,
                      ),
                      Text("添加朋友")
                    ],
                  ),
                ),
                new PopupMenuDivider(),
                PopupMenuItem(
                  height: 40,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.find_in_page,
                        color: Colors.black26,
                      ),
                      Text("扫一扫")
                    ],
                  ),
                )
              ];
            },
          ),
        ]),
      ),
      body: IndexPage(),
    ));
  }
}

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text("ok"),
          )
        ],
      ),
    );
  }
}
