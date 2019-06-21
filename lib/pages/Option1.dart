import 'package:mockup2/main.dart';
import 'package:flutter/material.dart';


class Option1Tile extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return ListTile(
        onTap: () {
          print('Pending clicked');
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Option1();
          }));
        },
        leading: Icon(Icons.inbox),
        title:  Text('Option1'),
        trailing: Text('39')
    );
  }
}

class Option1 extends StatefulWidget {
  @override
  _Option1State createState() => _Option1State();

}

class _Option1State extends State<Option1> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: DrawerOnly(),
      appBar: AppBar(),
      backgroundColor: Colors.red,
    );
  }
}


