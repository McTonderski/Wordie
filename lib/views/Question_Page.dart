import 'package:flutter/material.dart';
import 'package:wordie/design/design.dart';
import 'package:wordie/widgets/drawer_widget.dart';
import '../widgets/nav_bar.dart';
import 'question_answers.dart';

Question Q1 = Question(question: "abcd", sollution: "aaaa");

class QuestionPage extends StatefulWidget {  
  static const routeName = '/Question';
  QuestionPage();
  @override
  _QuestionState createState() => new _QuestionState();
}
List<Question> getQuestions() => [Question(question:'a',sollution:'b'),Question(question:'c',sollution:'d')];
Question getNextQuestion() => Question(question:'next',sollution:'question');
Question next = getNextQuestion();
class _QuestionState extends State<QuestionPage> {
  Widget build(BuildContext context) {
    List<Question> questions = getQuestions();
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      drawer: DrawerItemList(),
      appBar: NavBarWordie(),
      backgroundColor: primaryBackgroundColor,
      body:  Center(
              child: LayoutBuilder(builder: (context, constraints) {
                             if (isMobile(constraints)) { 
                                return next.questionToColumn();
                              } else {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: questions.map((e) => e.questionToRow()).toList()
                                ); 
                              }
                      }                       
                      ),
      ),
    );
  }
}

