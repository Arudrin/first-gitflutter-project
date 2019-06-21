import 'package:mockup2/main.dart';
import 'package:flutter/material.dart';


class InboxPage extends StatefulWidget {
  @override
  _InboxPageState createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context){
    return ListTile(
        leading: Icon(Icons.inbox),
        title:  Text('Inbox'),
        trailing: Text('99+')
    );
  }
}


