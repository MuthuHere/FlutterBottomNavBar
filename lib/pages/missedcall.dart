import 'package:flutter/material.dart';

import '../bottomnavigation.dart';

class MissedCallsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MissedCallsPage();
  }
}

class _MissedCallsPage extends State<MissedCallsPage> {
  List<Contact> missedCallContacts = [
    Contact(fullName: 'Muthu', phone: '01234567'),
    Contact(fullName: 'Dhoni', phone: '01234566'),
    Contact(fullName: 'Nivas', phone: '01234565'),
    Contact(fullName: 'Naveen', phone: '012345674'),
    Contact(fullName: 'Yuvi ', phone: '012345673'),
    Contact(fullName: 'Raydu', phone: '012345672'),
    Contact(fullName: 'King', phone: '012345671'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Column(
      children: <Widget>[
        new Expanded(
          child: new ListView.builder(
            itemCount: missedCallContacts.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  '${missedCallContacts[index].fullName}',
                  style: TextStyle(color: Colors.red),
                ),
                subtitle: Text(
                  '${missedCallContacts[index].phone}',
                  style: TextStyle(color: Colors.red),
                ),
                leading: new CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text(
                        '${missedCallContacts[index].fullName.substring(0, 1)}')),
                onTap: () => _onTapItem(context, missedCallContacts[index]),
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
