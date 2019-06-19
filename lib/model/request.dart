import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Record {
  final String venue;
  final String up_mail;
  final String date;
  final String order_id;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['venue'] != null),
        assert(map['up_mail'] != null),
        assert(map['order_id'] != null),
        assert(map['date'] != null),
        venue = map['venue'],
        order_id = map['order_id'],
        up_mail = map['up_mail'],
        date = map['date'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$venue:$order_id:$up_mail:$date>";
}