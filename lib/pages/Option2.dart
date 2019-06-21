import 'package:mockup2/main.dart';
import 'package:flutter/material.dart';

class Option2Tile extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return ListTile(
        onTap: () {
          print('Pending clicked');
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Option2();
          }));
        },
        leading: Icon(Icons.inbox),
        title:  Text('Option2'),
        trailing: Text('4')
    );
  }
}

class Option2 extends StatefulWidget {
  @override
  _Option2State createState() => _Option2State();

}

class _Option2State extends State<Option2> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: DrawerOnly(),
      appBar: AppBar(),
      backgroundColor: Colors.red,
    );
  }
}