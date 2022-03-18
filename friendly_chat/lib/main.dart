import 'package:flutter/material.dart';

void main() {
  runApp(
    const FriendlyChatUp(),
  );
}

class FriendlyChatUp extends StatelessWidget {
  const FriendlyChatUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FriendlyChat',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('FriendlyChat'),
          ),
        ));
  }
}
