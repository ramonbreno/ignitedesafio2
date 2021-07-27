import 'package:flutter/material.dart';
import 'package:notes/widgets/create_note_page_widget.dart';
import 'package:notes/widgets/home_page_widget.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      title: "Notes",
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePageWidget(),
        '/create-note': (context) => CreateNotePageWidget(),
      },
      //home: HomePage(),
    );
  }
}
