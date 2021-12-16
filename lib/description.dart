import 'package:flutter/material.dart';

class detailsWindow extends StatelessWidget {
  int index;
  Function updateTaskData;
  detailsWindow(this.index, this.updateTaskData);
  String value = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Description Window'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              textAlign: TextAlign.center,
              autofocus: true,
              onChanged: (text) {
                value = text;
              },
            ),
          ),
          Container(
            child: IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
                print(value);
                updateTaskData(index, value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
