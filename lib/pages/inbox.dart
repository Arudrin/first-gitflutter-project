import 'package:mockup2/main.dart';
import 'package:flutter/material.dart';


class InboxPage extends StatefulWidget {
  @override
  _InboxPageState createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        print("Container clicked");
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue)
        ),
        height: 55,
        child: Row(
          children: [
            Icon(Icons.inbox),
            Text('Inbox', textAlign: TextAlign.right),
            Expanded( child: Text('(37)', textAlign: TextAlign.center))]
        ),
      )
    );
  }
}


