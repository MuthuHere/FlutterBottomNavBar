import 'package:flutter/material.dart';

import '../bottomnavigation.dart';

class DialledCallsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _DialledCallsPage();
  }
}

class _DialledCallsPage extends State<DialledCallsPage> {
  List<Contact> dialledCallContacts = [
    Contact(fullName: 'Mugi', phone: '11121314'),
    Contact(fullName: 'Sumon', phone: '11121313'),
    Contact(fullName: 'Sara', phone: '11121312'),
    Contact(fullName: 'Kohli', phone: '11121311'),
    Contact(fullName: 'Dhoni', phone: '11121310'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Column(
      children: <Widget>[
        new Expanded(
          child: new ListView.builder(
            itemCount: dialledCallContacts.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  '${dialledCallContacts[index].fullName}',
                ),
                subtitle: Text(
                  '${dialledCallContacts[index].phone}',
                ),
                leading: new CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text(
                        '${dialledCallContacts[index].fullName.substring(0, 1)}')),
                onTap: () => _onTapItem(context, dialledCallContacts[index]),
              );
            },
          ),
        ),
      ],
    ));
  }

  void _onTapItem(BuildContext context, Contact post) {
    Scaffold.of(context).showSnackBar(
        new SnackBar(content: new Text("Taped on " + ' - ' + post.fullName)));
  }
}
