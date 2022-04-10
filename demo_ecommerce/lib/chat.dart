import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: "Enter Your Name"),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(hintText: "Enter Your Age"),
            ),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(hintText: "Enter Your Phone Number"),
            )
          ],
        ),
      ),
    );
  }
}
