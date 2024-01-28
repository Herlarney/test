import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ChatPageModel extends BaseViewModel {
  Views view = Views.chat;
  SubView subView = SubView.group;
  void setPView() {
    view = Views.participant;
    notifyListeners();
  }

  void setCView() {
    view = Views.chat;
    notifyListeners();
  }

  void setGsubView() {
    subView = SubView.group;
    notifyListeners();
  }

  void setPsubView() {
    subView = SubView.personal;
    notifyListeners();
  }

  List<Participants> participant = [
    Participants(
        color: Colors.red, image: 'images/part1.png', name: 'Dianne Russell',other: Colors.blue),
    Participants(
        color: Colors.red, image: 'images/part2.png', name: 'Guy Hawkins', other: Colors.blue),
    Participants(
        color: Colors.red, image: 'images/part3.png', name: 'Kathryn Murphy',other: Colors.blue),
    Participants(
        color: Colors.red, image: 'images/part1.png', name: 'Dianne Russell',other: Colors.blue),
    Participants(
        color: Colors.blue, image: 'images/part2.png', name: 'Guy Hawkins',other: Colors.blue),
    Participants(
        color: Colors.red, image: 'images/part3.png', name: 'Kathryn Murphy',other: Colors.blue),
    Participants(
        color: Colors.red, image: 'images/part1.png', name: 'Dianne Russell',other: Colors.red),
    Participants(
        color: Colors.red, image: 'images/part2.png', name: 'Guy Hawkins',other: Colors.blue),
    Participants(
        color: Colors.red, image: 'images/part3.png', name: 'Kathryn Murphy',other: Colors.red),
    Participants(
        color: Colors.red, image: 'images/part1.png', name: 'Dianne Russell',other: Colors.blue),
    Participants(
        color: Colors.red, image: 'images/part2.png', name: 'Guy Hawkins',other: Colors.blue),
  ];
}

enum Views { chat, participant }

enum SubView { group, personal }

enum Message { sender, receiver }

class Participants {
  final String? image;
  final String? name;
  final Color? color;
  final Color? other;
  Participants({required this.color, required this.image, required this.name, required this.other});
}
