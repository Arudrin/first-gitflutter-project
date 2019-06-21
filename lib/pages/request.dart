import 'package:mockup2/main.dart';
import 'package:flutter/material.dart';


class RequestsTile extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return ListTile(
        onTap: () {
          print('Pending clicked');
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return MyHomePage();
          }));
        },
        leading: Icon(Icons.inbox),
        title:  Text('Requests'),
        trailing: Text('39')
    );
  }
}

class Requests extends StatefulWidget {
  @override
  _RequestsState createState() => _RequestsState();

}

class _RequestsState extends State<Requests> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: DrawerOnly(),
      appBar: AppBar(),
      backgroundColor: Colors.green,
    );
  }
}