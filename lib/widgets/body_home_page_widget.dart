import 'package:flutter/material.dart';

class BodyHomePageWidget extends StatefulWidget {
  final List<String>? notes;

  const BodyHomePageWidget({
    Key? key,
    @required this.notes,
  }) : super(key: key);

  @override
  _BodyHomePageWidgetState createState() => _BodyHomePageWidgetState();
}

class _BodyHomePageWidgetState extends State<BodyHomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (var i = 0; i < widget.notes!.length; i++)
            Card(
              child: ListTile(
                title: Text(widget.notes![i]),
                onTap: () async {
                  var response = await Navigator.pushNamed(
                      context, '/create-note',
                      arguments: widget.notes![i]);

                  if (response != null) {
                    var description = response as String;
                    if (description.isEmpty) {
                      widget.notes!.removeAt(i);
                    } else {
                      widget.notes![i] = description;
                    }
                    setState(() {});
                  }
                },
              ),
            ),
        ],
      ),
    );
  }
}
