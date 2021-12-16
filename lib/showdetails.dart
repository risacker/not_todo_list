import 'package:flutter/material.dart';

class showDetails extends StatelessWidget {
  int index;
  Map <int, String> details;
  showDetails(this.index, this.details);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),

    );
  }
}