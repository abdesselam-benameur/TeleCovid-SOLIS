import 'package:flutter/cupertino.dart';
import 'package:tele_covid_solis/Model/messageModel.dart';

class ChatUsers {
  String name;
  String messageText;
  String imageURL;
  String time;
  List<ChatMessage> messages;
  ChatUsers(
      {required this.name,
      required this.messageText,
      required this.imageURL,
      required this.time,
      required this.messages});
}

class ChatMessage {
  String messageContent;
  String messageType;
  String time;
  //ChatMessage({required this.messageContent, required this.messageType});
  ChatMessage(
      {required this.messageContent,
      required this.messageType,
      required this.time});
}

class Users {
  List<ChatUsers> _users = [
    //0
    ChatUsers(
        name: "Boudeffa Zakaria",
        messageText: "Moi:Merci, restez...",
        imageURL: "assets/images/zakaria.png",
        time: "hier",
        messages: [
          ChatMessage(
              messageContent: "Bonjour, Monsieur Zakaria",
              messageType: "sender",
              time: '8:02'),
          ChatMessage(
              messageContent: "n'oubliez pas de remplir le questionnaire",
              messageType: "sender",
              time: '8:02'),
          ChatMessage(
              messageContent: "Eh bien", messageType: "receiver", time: '8:05'),
          ChatMessage(
              messageContent: "je vais le remplir maintenant ",
              messageType: "receiver",
              time: '8:05'),
          ChatMessage(
              messageContent: "Merci, restez en bonne santé ",
              messageType: "sender",
              time: '8:10'),
        ]),
    //1
    ChatUsers(
        name: "Amel Beldjilali",
        messageText: "je vais envoyer ...",
        imageURL: "assets/images/Amel.png",
        time: "31 Mar",
        messages: [
          ChatMessage(
              messageContent: "Bonjour, Madame Amel",
              messageType: "sender",
              time: '8:02'),
          ChatMessage(
              messageContent: "n'oubliez pas de remplir le questionnaire",
              messageType: "sender",
              time: '8:02'),
          ChatMessage(
              messageContent: "Eh bien", messageType: "receiver", time: '8:05'),
          ChatMessage(
              messageContent: "je vais le remplir maintenant ",
              messageType: "receiver",
              time: '8:05'),
          ChatMessage(
              messageContent: "Merci, restez en bonne santé ",
              messageType: "sender",
              time: '8:10'),
        ]),
    //2
    ChatUsers(
        name: "KORBAA Hamza",
        messageText: "Pardon ",
        imageURL: "assets/images/hamza.png",
        time: "28 Mar",
        messages: [
          ChatMessage(
              messageContent: "Bonjour, Monsieur hamza",
              messageType: "sender",
              time: '8:02'),
          ChatMessage(
              messageContent: "n'oubliez pas de remplir le questionnaire",
              messageType: "sender",
              time: '8:02'),
          ChatMessage(
              messageContent: "Eh bien", messageType: "receiver", time: '8:05'),
          ChatMessage(
              messageContent: "je vais le remplir maintenant ",
              messageType: "receiver",
              time: '8:05'),
          ChatMessage(
              messageContent: "Merci, restez en bonne santé ",
              messageType: "sender",
              time: '8:10'),
        ]),
    //3
    ChatUsers(
        name: "Ayoub Titoun",
        messageText: "La douleur est partie ",
        imageURL: "assets/images/Ayoub.png",
        time: "23 Mar",
        messages: [
          ChatMessage(
              messageContent: "Bonjour, Monsieur Ayoub",
              messageType: "sender",
              time: '8:02'),
          ChatMessage(
              messageContent: "n'oubliez pas de remplir le questionnaire",
              messageType: "sender",
              time: '8:02'),
          ChatMessage(
              messageContent: "Eh bien", messageType: "receiver", time: '8:05'),
          ChatMessage(
              messageContent: "je vais le remplir maintenant ",
              messageType: "receiver",
              time: '8:05'),
          ChatMessage(
              messageContent: "Merci, restez en bonne santé ",
              messageType: "sender",
              time: '8:10'),
        ]),
    //4
    ChatUsers(
        name: "Dr.Benakmoume",
        messageText: "Merci, restez...",
        imageURL: "assets/images/doctor1.jpeg",
        time: "hier",
        messages: [
          ChatMessage(
              messageContent: "Bonjour, Monsieur Zakaria",
              messageType: "receiver",
              time: '8:02'),
          ChatMessage(
              messageContent: "n'oubliez pas de remplir le questionnaire",
              messageType: "receiver",
              time: '8:02'),
          ChatMessage(
              messageContent: "Eh bien", messageType: "sender", time: '8:05'),
          ChatMessage(
              messageContent: "je vais le remplir maintenant ",
              messageType: "sender",
              time: '8:05'),
          ChatMessage(
              messageContent: "Merci, restez en bonne santé ",
              messageType: "receiver",
              time: '8:10'),
        ]),
    //5
    ChatUsers(
        name: "Dr.Djabelkhir",
        messageText: "au revoir",
        imageURL: "assets/images/doctor02.jpeg",
        time: "21 juin",
        messages: [
          ChatMessage(
              messageContent: "Bonjour, Monsieur Zakaria",
              messageType: "receiver",
              time: '8:02'),
          ChatMessage(
              messageContent: "n'oubliez pas de remplir le questionnaire",
              messageType: "receiver",
              time: '8:02'),
          ChatMessage(
              messageContent: "Eh bien", messageType: "sender", time: '8:05'),
          ChatMessage(
              messageContent: "je vais le remplir maintenant ",
              messageType: "sender",
              time: '8:05'),
          ChatMessage(
              messageContent: "Merci, restez en bonne santé ",
              messageType: "receiver",
              time: '8:10'),
        ]),
    //6
    ChatUsers(
        name: "Dr.Benameur",
        messageText: "Moi: Pardon ",
        imageURL: "assets/images/doctor5.jpeg",
        time: "28 Mar",
        messages: [
          ChatMessage(
              messageContent: "Bonjour, Monsieur Zakaria",
              messageType: "receiver",
              time: '8:02'),
          ChatMessage(
              messageContent: "n'oubliez pas de remplir le questionnaire",
              messageType: "receiver",
              time: '8:02'),
          ChatMessage(
              messageContent: "Eh bien", messageType: "sender", time: '8:05'),
          ChatMessage(
              messageContent: "je vais le remplir maintenant ",
              messageType: "sender",
              time: '8:05'),
          ChatMessage(
              messageContent: "Merci, restez en bonne santé ",
              messageType: "receiver",
              time: '8:10'),
        ]),
  ];

  List<ChatUsers> getUsers(List<int> list) {
    List<ChatUsers> result = [];
    for (int i in list) {
      result.add(getUser(i));
    }
    return result;
  }

  ChatUsers getUser(index) {
    return _users[index];
  }
}
