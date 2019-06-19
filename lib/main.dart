import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mockup2/model/request.dart';
import 'package:mockup2/pages/inbox.dart';
import 'package:mockup2/pages/request.dart';
void main() => runApp(MyApp());

final dummySnapshot = [
  {"name": "Filip", "votes": 15},
  {"name": "Abraham", "votes": 14},
  {"name": "Richard", "votes": 11},
  {"name": "Ike", "votes": 10},
  {"name": "Justin", "votes": 1},
];






class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baby Names',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> pages = [
    InboxPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reservation Requests')),
      body: _buildBody(context),
      drawer: _buildDrawer(context),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // to do
        },
        child: Icon(Icons.add_box),
        backgroundColor: Colors.pink,
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: _buildDrawerBody(context)
    );
  } //_buildDrawer

  Widget _buildDrawerBody(BuildContext context){
    return ListView(
      children: <Widget>[ DrawerHeader( child: Text('wtf')), InboxPage(),Pending()],
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('requests').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();

        return _buildList(context, snapshot.data.documents);
      },
    );
  }

  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final record = Record.fromSnapshot(data);

    return Padding(
      key: ValueKey(record.venue),
      padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(0),
        ),
        child: ListTile(
          title: Text(record.venue),
          trailing: Text(record.up_mail),
          onTap: () =>  record.reference.updateData({'date': record.date + "1"}),
        ),
      ),
    );
  }
}


