import 'package:flutter/material.dart';
import '../bottomnavigation.dart';



class ReceivedCallsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ReceivedCallsPage();
  }
}

class _ReceivedCallsPage extends State<ReceivedCallsPage> {


  List<Contact> receivedCallContacts = [
    Contact(fullName: 'Raina', phone: '091929394'),
    Contact(fullName: 'Jaddu', phone: '091929393'),
    Contact(fullName: 'Irfan', phone: '091929293'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Column(
          children: <Widget>[
            new Expanded(
              child: new ListView.builder(
                itemCount: receivedCallContacts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      '${receivedCallContacts[index].fullName}',
                    ),
                    subtitle: Text('${receivedCallContacts[index].phone}'),
                    leading: new CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text(
                            '${receivedCallContacts[index].fullName.substring(0, 1)}')),
                    onTap: () => _onTapItem(context, receivedCallContacts[index]),
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