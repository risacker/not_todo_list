import 'package:flutter/material.dart';
import './showdetails.dart';

class showtasks extends StatelessWidget {
  List<String> tasks;
  final Function deleteTask, add_details;
  Map<int, String> details;
  showtasks(this.tasks, this.deleteTask, this.add_details, this.details);

  Widget _buildTaskItem(BuildContext context, int index) {
    return Card(
      child: ListTile(
        leading: IconButton(
          icon: Icon(Icons.info),
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(
            // builder: (BuildContext) => showDetails(index, details)));
          },
        ),
        onTap: () {
          print('first!!');
          add_details(index);
        },
        title: Text(tasks[index]),
        // leading: Text('data1'),
        trailing: IconButton(
          icon: Icon(
            Icons.cancel,
          ),
          onPressed: () {
            deleteTask(tasks[index]);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildTaskItem,
      itemCount: tasks.length,
    );
  }
}