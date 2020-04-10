import 'package:flutter/material.dart';

bool isMobile(constraints){
  if(constraints.maxWidth < 600){
    return true;
  }
    else {
      return false;
  }
}
  


 
 
class Question{

  String question;
  String sollution;
  TextEditingController answer;
  Question({this.question, this.sollution});

Widget sollutionInputTextField() {
    return Container(
      margin: EdgeInsets.all(5),
      width: 300,
      child: TextField(
        style: TextStyle(
                fontSize: 20,
                fontFamily: 'SourceSerifPro',
            ),
        controller:  this.answer,
        decoration: InputDecoration(
          fillColor: Color.fromRGBO(
              225, 204, 130, 0.22),
          filled: true,
          hintText: "Place your answer here",
        ),
        autofocus: false,
      ));
 }

  Widget questionToRow(){
  return Container(
    margin:  EdgeInsets.all(10),
      child: (Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Text(
              this.question,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'SourceSerifPro',
            ))
          ),
          this.sollutionInputTextField(),
    ],)),
  );
}

  Widget questionToColumn(){
  return(Column(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          child: Text(
            this.question,
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'SourceSerifPro',
          ))
        ),
        this.sollutionInputTextField(),
  ],));
}

  bool checkAnswer(){
    return this.question == this.answer.text;
  }
}