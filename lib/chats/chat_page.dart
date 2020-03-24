import 'package:flutter/material.dart';
import 'package:wechat/chats/message_item.dart';
import 'message_data.dart';


class ChatPage extends StatefulWidget {

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("切换Tab");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (BuildContext context, int index) {
          return MessageItem(messageData[index]);
        },
      )
    );
  }
}