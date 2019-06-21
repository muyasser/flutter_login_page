import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: CircleAvatar(
          radius: 72,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/alucard.jpg'),
        ),
      ),
    );

    final welcomeWidget = Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        'Welcome Alucard',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );

    final lorem = Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        'Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem Lorem ',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.lightBlueAccent],
        ),
      ),
      child: Column(
        children: <Widget>[
          alucard,
          welcomeWidget,
          lorem,
        ],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
