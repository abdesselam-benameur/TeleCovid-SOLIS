import 'package:flutter/material.dart';
import 'package:tele_covid_solis/Messeges/contactPage.dart';
import 'package:tele_covid_solis/Messeges/message.dart';
import 'package:tele_covid_solis/Model/userModel.dart';
import 'package:tele_covid_solis/doctor/home.dart';

class ContactPage extends StatefulWidget {
  List<int> list;
  ContactPage({Key? key, required this.list}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState(list: list);
}

class _ContactPageState extends State<ContactPage> {
  List<int> list;
  List<ChatUsers> data = [];
  final primary = Color.fromARGB(255, 71, 63, 151);
  final secondary = Color.fromARGB(200, 77, 121, 255);
  final third = Color.fromARGB(255, 255, 77, 88);

  final TextEditingController _search = new TextEditingController();
  String _searchText = "";
  _ContactPageState({Key? key, required this.list}) {
    data = Users().getUsers(list);
    _search.addListener(() {
      if (_search.text.isEmpty) {
        setState(() {
          _searchText = "";
        });
      } else {
        setState(() {
          _searchText = _search.text;
        });
      }
      ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
        backgroundColor: primary,
        centerTitle: false,
        title: Text(
          "Messages",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                controller: _search,
                decoration: InputDecoration(
                  hintText: "Rechercher",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),
            ListView.builder(
              itemCount: data.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ((_searchText == null) || (_searchText == ""))
                    ? ConversationList(
                        index: list[index],
                        name: data[index].name,
                        messageText: data[index].messageText,
                        imageUrl: data[index].imageURL,
                        time: data[index].time,
                        isMessageRead: (index == 0) ? true : false,
                      )
                    : ((data[index]
                            .name
                            .toLowerCase()
                            .contains(_searchText.toLowerCase()))
                        ? ConversationList(
                            index: index,
                            name: data[index].name,
                            messageText: data[index].messageText,
                            imageUrl: data[index].imageURL,
                            time: data[index].time,
                            isMessageRead: (index == 0) ? true : false,
                          )
                        : Container());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ConversationList extends StatefulWidget {
  int index;
  String name;
  String messageText;
  String imageUrl;
  String time;
  bool isMessageRead;
  ConversationList(
      {required this.index,
      required this.name,
      required this.messageText,
      required this.imageUrl,
      required this.time,
      required this.isMessageRead});
  @override
  _ConversationListState createState() => _ConversationListState();
}

class _ConversationListState extends State<ConversationList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ChatPage(index: widget.index + 4);
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.only(right: 10, top: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(width: 3, color: Colors.white),
                      image: DecorationImage(
                          image: AssetImage(widget.imageUrl

                              // (widget.index == 0)
                              //   ? "assets/images/zakaria.png"
                              //   : (widget.index == 1)
                              //       ? "assets/images/Amel.png"
                              //       : (widget.index == 2)
                              //           ? "assets/images/hamza.png"
                              //           : "assets/images/Ayoub.png"
                              ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.name,
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            widget.messageText,
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey.shade600,
                                fontWeight: widget.isMessageRead
                                    ? FontWeight.bold
                                    : FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              widget.time,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: widget.isMessageRead
                      ? FontWeight.bold
                      : FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}
