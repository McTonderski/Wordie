import 'package:flutter/material.dart';

class InputEmail extends StatefulWidget {
  @override
  _InputEmailState createState() => _InputEmailState();
}

class _InputEmailState extends State<InputEmail> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 4,
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: TextFormField(
            validator: null,
            style: TextStyle(
              color: Colors.black54,
            ),
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black26)),
              filled: true,
              fillColor: Colors.yellow[200],
              hoverColor: Colors.yellow[100],
              labelStyle: TextStyle(
                color: Colors.black87,
              ),
            ),
          ),
        ));
  }
}
