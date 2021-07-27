import 'package:flutter/material.dart';
import 'package:notes/widgets/body_home_page_widget.dart';

class HomePageWidget extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePageWidget> {
  var notes = <String>['Primeiro Item'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
        centerTitle: true,
      ),
      body: BodyHomePageWidget(
        notes: notes,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          var description = await Navigator.pushNamed(context, '/create-note');
          if (description != null) {
            notes.add(description as String);
            setState(() {});
          }
        },
      ),
    );
  }
}
