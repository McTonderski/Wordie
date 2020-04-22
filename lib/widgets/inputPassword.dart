import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InputPassword extends StatefulWidget {
  @override
  _InputPasswordState createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
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
              labelText: 'Password',
              border: OutlineInputBorder(
                
              ),
              filled: true,
              fillColor: Colors.yellow[100],
              hoverColor: Colors.yellow[100],
              labelStyle: TextStyle(
                color: Colors.black87,
              ),
            ),
          ),
        ));
  }
}
