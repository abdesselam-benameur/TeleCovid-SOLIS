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
    ChatUsers(
        name: "Boudeffa Zakaria",
        messageText: "Moi:Merci, restez...",
        imageURL: "images/zakaria.jpeg",
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
    ChatUsers(
        name: "Amel Beldjilali",
        messageText: "je vais envoyer ...",
        imageURL: "images/Amel.jpeg",
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
    ChatUsers(
        name: "KORBAA Hamza",
        messageText: "Pardon ",
        imageURL: "images/hamza.jpeg",
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
    ChatUsers(
        name: "Ayoub Titoun",
        messageText: "La douleur est partie ",
        imageURL: "images/ayoub.jpeg",
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
  ];

  List<ChatUsers> getUsers() {
    return _users;
  }

  ChatUsers getUser(index) {
    return _users[index];
  }
}
