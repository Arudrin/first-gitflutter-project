import 'package:mockup2/main.dart';
import 'package:flutter/material.dart';


class PendingTile extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return ListTile(
        onTap: () {
          print('Pending clicked');
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Pending();
          }));
        },
        leading: Icon(Icons.inbox),
        title:  Text('Pending'),
        trailing: Text('39')
    );
  }
}

class Pending extends StatefulWidget {
  @override
  _PendingState createState() => _PendingState();
}



class _PendingState extends State<Pending>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      drawer: DrawerOnly(),
      appBar: AppBar(),
      backgroundColor: Colors.blue,
    );
  }
}
