import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_application_4/data.dart';

class MessageDao {
  final DatabaseReference _messageRef =
      FirebaseDatabase.instance.reference().child('message');

  void saveMessage(loc message) {
    _messageRef.push().set(message.toJson());
  }

  Query getMessageQuery() {
    return _messageRef;
  }
}
