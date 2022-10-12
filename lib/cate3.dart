import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'extra.dart';

class Contact {
  final String name;

  Contact(this.name);
}

class ContactsPage extends StatefulWidget {
  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  final contacts = [
    Contact("sahar"),
    Contact("Joe"),
    Contact("fo"),
    Contact("Fifo"),
    Contact("Moshe"),
    Contact("sahar"),
    Contact("Joe"),
    Contact("fo"),
    Contact("Fifo"),
    Contact("Moshe"),
  ];

  var _displayAll = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _gridContacts(),
      ),
    );
  }

  Widget _gridContacts() {
    final size = _displayAll ? contacts.length : contacts.length - 6;
    final contactsWidget =
        List.generate(size, (index) => _contactItem(contacts[index]))
          ..add(_seeNoSeeMore());
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 2 / 1,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: contactsWidget,
    );
  }

  Widget _contactItem(Contact item) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Extra()));
      },
      child: Container(
        color: Colors.red.withOpacity(0.5),
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.person),
            Text(item.name),
          ],
        ),
      ),
    );
  }

  Widget _seeNoSeeMore() {
    return InkWell(
      onTap: () => setState(() => _displayAll = !_displayAll),
      child: Container(
        color: Colors.blue.withOpacity(0.5),
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.person),
            Text(_displayAll ? "hide" : "Show all"),
          ],
        ),
      ),
    );
  }
}
