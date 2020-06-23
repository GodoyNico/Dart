import 'dart:io';

class Card {
  int id;
  String title;
  String content;

  Card({this.id, this.title, this.content});

  Card.fromMap(Map<String, dynamic> map)
    : id = map['id'],
      title = map['title'],
      content = map['content'];

  Map<String, dynamic> toMap() => {
    'id': id,
    'title': title,
    'content': content
  };

  @override
  String toString() {
    return 'usuarioId: $id, title: $title, content: $content';
  }
}