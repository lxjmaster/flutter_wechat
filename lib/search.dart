import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget {

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  FocusNode _searchFocusNode;
  TextEditingController _searchController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _searchController = TextEditingController();
    _searchFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                SafeArea(
                  child: Row(children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(top: 10.0, left: 10.0,right: 8.0),
                        height: 30.0,
                        child: TextField(
                          textAlignVertical: TextAlignVertical(y: 1.0),
                          focusNode: _searchFocusNode,
                          controller: _searchController,
                          textInputAction: TextInputAction.done,
                          autofocus: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              size: 26.0,
                              color: Colors.grey,
                            ),
                            suffixIcon: _searchController.value.text.isNotEmpty
                            ? IconButton(
                                icon: Icon(
                                  Icons.close,
                                  size: 17.0,
                                  color: Colors.grey,
                                ),
                              onPressed: (){
                                // _searchFocusNode.unfocus();
                                // _searchController.clear();
                                // _searchFocusNode.requestFocus();
                                WidgetsBinding.instance.addPostFrameCallback( (_) {
                                  _searchFocusNode.unfocus();
                                  _searchController.clear();
                                  _searchFocusNode.requestFocus();
                                });
                              }
                            ):null,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "搜索",
                          ),
                        )
                      )
                    ),
                    Container(
                      padding: const EdgeInsets.only(top:10.0, right: 8.0),
                      child: GestureDetector(
                        child: Text(
                          "取消",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.blue.shade900
                          ),
                        ),
                        onTap: () => Navigator.of(context).pop(),
                      )
                    )
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "搜索指定内容",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey
                      ),
                    ),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 130.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        // padding: const EdgeInsets.only(),
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            "朋友圈",
                            style: TextStyle(
                              color: Colors.blue.shade900,
                              letterSpacing: 1.0,
                              fontSize: 12.0
                            ),
                          ),
                          Text(
                            "文章",
                            style: TextStyle(
                              color: Colors.blue.shade900,
                              letterSpacing: 4.0,
                              fontSize: 12.0
                            ),
                          ),
                          Text(
                            "公众号",
                            style: TextStyle(
                              color: Colors.blue.shade900,
                              letterSpacing: 1.0,
                              fontSize: 12.0
                            ),
                          )
                      ],),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(
                              "小程序",
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                letterSpacing: 1.0,
                                fontSize: 12.0
                              ),
                            ),
                            Text(
                              "音乐",
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                letterSpacing: 4.0,
                                fontSize: 12.0
                              ),
                            ),
                            Text(
                              "表情",
                              style: TextStyle(
                                color: Colors.blue.shade900,
                                letterSpacing: 8.0,
                                fontSize: 12.0
                              ),
                            )
                        ],),
                      ),
                    ]
                  ),
                )
              ],
            )
          ]
        ),
      ),
    );
  }
}