import 'package:flutter/material.dart';
import 'package:wechat/chats/chat_page.dart';


const double _kMenuDividerHeight = 16.0;
const Color _KMenuDividerColor = Colors.white;


class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;
  ChatPage chatPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  String switch_pressed_icon(index) {
    
    switch(index) {
      case 0: {
        return "images/wechat_chats_pressed.png";
      }
      // break;
      case 1: {
        return "images/wechat_contacts_pressed.png";
      }
      // break;
      case 2: {
        return "images/wechat_discover_pressed.png";
      }
      // break;
      case 3: {
        return "images/wechat_profile_pressed.png";
      }
      // break;
      default: {
        return "";
      }
      // break;
    }
  }
  
  final List<Widget> _children = [ChatPage(), ChatPage(), ChatPage(), ChatPage()];

  Widget switch_current_page(index) {

    switch(index) {
      case 0: {
        if (chatPage == null){
          chatPage = ChatPage();
        }
        return chatPage;
      }
    }
  }

  _popupMenuItem(String iconpath, String text) {
    return PopupMenuItem(
      child: Row(
        children: <Widget>[
          new Image.asset(
            iconpath,
            width: 32.0,
            height: 28.0,
          ),
          new Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          "微信",
          style: TextStyle(
            color: Colors.black
          ),
        ),
        backgroundColor: Color(0xffffffff),
        actions: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed("search");
            },
            child: new Icon(
            Icons.search,
            color: Colors.black,
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(left: 50.0, right: 20.0),
            child: new GestureDetector(
              onTap: () {
                showMenu(
                  color: Colors.black87,
                  context: context, 
                  position: RelativeRect.fromLTRB(500.0, 70.0, 10.0, 0.0), 
                  items: <PopupMenuEntry>[
                    _popupMenuItem(
                      "images/new_chat.png",
                      "发起群聊"
                    ),
                    new MyPopupMenuDivider(height: 2.0, color: Colors.white24),
                    _popupMenuItem(
                      "images/add_contact.png",
                      "添加朋友"
                    ),
                    new MyPopupMenuDivider(height: 2.0, color: Colors.white24),
                    _popupMenuItem(
                      "images/scan.png",
                      "扫一扫"
                    ),
                    new MyPopupMenuDivider(height: 2.0, color: Colors.white24),
                    _popupMenuItem(
                      "images/money.png",
                      "收付款"
                    ),
                    new MyPopupMenuDivider(height: 2.0, color: Colors.white24),
                    _popupMenuItem(
                      "images/support.png",
                      "帮助与反馈"
                    )
                  ],
                );
              },
              child: new Icon(
                Icons.add_circle_outline,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      // body: switch_current_page(_currentIndex),
      body: IndexedStack(
        index: _currentIndex,
        children: _children,
      ),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          new BottomNavigationBarItem(
            title: Text(
              "聊天",
              style: TextStyle(
                color: _currentIndex == 0
                ? Color(0xff46c01b) : Color(0xff999999)
              )
            ),
            icon: new Image.asset(
              _currentIndex == 0
              ? switch_pressed_icon(_currentIndex):
              "images/wechat_chats.png",
              width: 32.0,
              height: 28.0,
            ),
          ),
          new BottomNavigationBarItem(
            title: Text(
              "通讯录",
              style: TextStyle(
                color: _currentIndex == 1
                ? Color(0xff46c01b) : Color(0xff999999)
              )
            ),
            icon: new Image.asset(
              _currentIndex == 1
              ? switch_pressed_icon(_currentIndex):
              "images/wechat_contacts.png",
              width: 32.0,
              height: 28.0,
            )
          ),
          new BottomNavigationBarItem(
            title: Text(
              "发现",
              style: TextStyle(
                color: _currentIndex == 2
                ? Color(0xff46c01b) : Color(0xff999999)
              )
            ),
            icon: new Image.asset(
              _currentIndex == 2
              ? switch_pressed_icon(_currentIndex):
              "images/wechat_discover.png",
              width: 32.0,
              height: 28.0,
            )
          ),
          new BottomNavigationBarItem(
            title: Text(
              "我",
              style: TextStyle(
                color: _currentIndex == 3
                ? Color(0xff46c01b) : Color(0xff999999)
              )
            ),
            icon: new Image.asset(
              _currentIndex == 3
              ? switch_pressed_icon(_currentIndex):
              "images/wechat_profile.png",
              width: 32.0,
              height: 28.0,
            )
          )
        ],
      ),
    );
  }
}

class MyPopupMenuDivider extends PopupMenuEntry<Null> {
  
  const MyPopupMenuDivider({ Key key, this.height = _kMenuDividerHeight, this.color = _KMenuDividerColor }) : super(key: key);

  @override
  final double height;
  final Color color;

  @override
  bool represents(void value) => false;

  @override
  _MyPopupMenuDividerState createState() => _MyPopupMenuDividerState();
}

class _MyPopupMenuDividerState extends State<MyPopupMenuDivider> {

  @override
  Widget build(BuildContext context) => Divider(
    height: widget.height,
    color: widget.color,
    );
}