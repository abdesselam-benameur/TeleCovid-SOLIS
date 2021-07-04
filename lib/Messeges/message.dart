import 'package:flutter/material.dart';
import 'package:tele_covid_solis/Messeges/contactPage.dart';

import 'package:tele_covid_solis/Model/userModel.dart';

class ChatPage extends StatefulWidget {
  int index;
  ChatPage({Key? key, required this.index}) : super(key: key);

  @override
  _ChatPageState createState() =>
      _ChatPageState(index: index, user: Users().getUser(index));
}

class _ChatPageState extends State<ChatPage> {
  int index;
  ChatUsers user;
  final primary = Color.fromARGB(255, 71, 63, 151);
  final secondary = Color.fromARGB(100, 77, 121, 255);
  final third = Color.fromARGB(255, 255, 77, 88);
  final TextEditingController _text = new TextEditingController();
  ScrollController scrollController = ScrollController();
  bool newMessage = false;
  var messages;
  String _textMessage = '';
  _ChatPageState({Key? key, required this.index, required this.user}) {
    messages = Users().getUser(index).messages;
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      if (newMessage) {
        messages.add(ChatMessage(
            messageContent: _textMessage,
            messageType: "Sender",
            time: TimeOfDay.now().toString()));
        _text.text = "";
        // newMessage = false;
      }
    });
    callback(String value) {
      if (_text.text.isNotEmpty) {
        newMessage = true;
        _textMessage = value;
        _text.clear();
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          curve: Curves.easeOut,
          duration: const Duration(milliseconds: 300),
        );
      } else {
        newMessage = false;
        _text.text = '';
        value = "";
      }
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        backgroundColor: primary,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                /*IconButton(
                  onPressed: () {
                    (index < 4)
                        ? Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                            return ContactPage(list: [0, 1, 2, 3]);
                          }))
                        : Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),*/
                SizedBox(
                  width: 60,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(user.imageURL),
                  maxRadius: 20,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        user.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.info,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(bottom: 50),
                height: MediaQuery.of(context).size.height - 150,
                width: double.infinity,
                child: ListView.builder(
                    controller: scrollController,
                    itemCount: messages.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return buildCards(context, index);
                    }),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 0),
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                height: 60,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(200, 77, 121, 255),
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextField(
                          controller: _text,
                          onSubmitted: (value) => callback(value),
                          decoration: InputDecoration(
                              hintText: "Écrire un message ...",
                              hintStyle: TextStyle(color: Colors.black54),
                              border: InputBorder.none)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 18,
                        ),
                        backgroundColor: Color.fromARGB(200, 77, 121, 255),
                        elevation: 0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCards(BuildContext context, int index) {
    return Container(
        padding: EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
        child: Align(
          alignment: (messages[index].messageType == "receiver"
              ? Alignment.topLeft
              : Alignment.topRight),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: (messages[index].messageType == "receiver"
                  ? Colors.grey.shade200
                  : secondary),
            ),
            padding: EdgeInsets.all(16),
            child: Text(
              messages[index].messageContent,
              style: TextStyle(fontSize: 15),
            ),
          ),
        ));
  }
}
