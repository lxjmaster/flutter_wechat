import 'package:flutter/material.dart';
import 'message_data.dart';
import 'package:date_format/date_format.dart';


class MessageItem extends StatelessWidget {
  final MessageData message;
  MessageItem(this.message);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return GestureDetector(
      onTap: (){
        print("点击");
      },
      child:Container(
        padding: EdgeInsets.only(top: 1.0, bottom: 1.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Color(0xffd9d9d9))),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 6.0, left: 13.0, right: 13.0, bottom: 6.0),
              child: Image.network(message.avatar),
              width: 35.0,
              height: 35.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      message.title,
                      style: TextStyle(
                        fontSize: 13.0
                      ),
                    )
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      message.subtitle,
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 9.0
                      ),
                      overflow: TextOverflow.ellipsis,
                    )
                  )
                ]
              )
            ),
            Container(
              padding: EdgeInsets.only(right: 5.0, bottom: 15.0),
              child: Text(
                formatDate(message.time, [hh, ":", nn]).toString(),
                style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.grey[500]
                ),
              )
            )
          ]
        ,)
      )
    );
    // return Container(
    //   padding: EdgeInsets.only(top: 1.0, bottom: 1.0),
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     border: Border(bottom: BorderSide(color: Color(0xffd9d9d9))),
    //   ),
    //   child: GestureDetector(
    //     onTap: (){
    //       print("123");
    //     },
    //     child: Row(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: <Widget>[
    //         Container(
    //           margin: const EdgeInsets.only(top: 6.0, left: 13.0, right: 13.0, bottom: 6.0),
    //           child: Image.network(message.avatar),
    //           width: 35.0,
    //           height: 35.0,
    //         ),
    //         Expanded(
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: <Widget>[
    //               Container(
    //                 padding: EdgeInsets.only(top: 10.0),
    //                 child: Text(
    //                   message.title,
    //                   style: TextStyle(
    //                     fontSize: 13.0
    //                   ),
    //                 )
    //               ),
    //               Container(
    //                 padding: EdgeInsets.only(bottom: 10.0),
    //                 child: Text(
    //                   message.subtitle,
    //                   style: TextStyle(
    //                     color: Colors.grey[500],
    //                     fontSize: 9.0
    //                   ),
    //                   overflow: TextOverflow.ellipsis,
    //                 )
    //               )
    //             ]
    //           )
    //         ),
    //         Container(
    //           padding: EdgeInsets.only(right: 5.0, bottom: 15.0),
    //           child: Text(
    //             formatDate(message.time, [hh, ":", nn]).toString(),
    //             style: TextStyle(
    //               fontSize: 10.0,
    //               color: Colors.grey[500]
    //             ),
    //           )
    //         )
    //       ]
    //     ,)
    //   ),
    // );
  }
}