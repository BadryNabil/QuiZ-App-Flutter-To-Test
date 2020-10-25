import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'result.dart';

main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;
  int num0 , num1 , num2;

  void restartApp()
  {
    setState(() {
      _questionIndex = 0;
      _totalScore    = 0;
    });
  }
  void answerQuestion(score)
  {

    if(_questionIndex==0)      num0=score;
    else if(_questionIndex==1) num1=score;
    else if(_questionIndex==0) num0=score;
    _totalScore +=score;
    setState(() {
      _questionIndex++;
    });
  }
  final List<Map<String, Object>> question = [
    {
    'questiontext' : 'What\'s Are Favorite Color?',
    'answers'      : 
    [
      { 'text' : 'Black'   , 'score' : 10 },
      { 'text' : 'Green'   , 'score' : 20 },
      { 'text' : 'Blue'    , 'score' : 30 },
      { 'text' : 'Yellow'  , 'score' : 40 },
    
    ]
    },
    {
    'questiontext' : 'What\'s Are Favorite animal?',
    'answers'      : 
    [
      { 'text' : 'Rabbit'     , 'score' : 10 },
      { 'text' : 'Tiger'      , 'score' : 20 },
      { 'text' : 'Elephant'   , 'score' : 30 },
      { 'text' : 'Lion'       , 'score' : 40 },
    
    ]
    },
    {
    'questiontext' : 'What\'s Are Favorite Person?',
    'answers'      : 
    [
      { 'text' : 'Badry'      , 'score' : 10 },
      { 'text' : 'Ahmed'      , 'score' : 20 },
      { 'text' : 'Hassan'     , 'score' : 30 },
      { 'text' : 'Nabil'      , 'score' : 40 },
    ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title: Text("Quiz App"),
        ) ,
        body: Container(
          child: _questionIndex < question.length 
        ? Quiz(question, _questionIndex, answerQuestion)
        : Result(restartApp,_totalScore),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
            if(_questionIndex==1)      _totalScore-=num0;
            else if(_questionIndex==2) _totalScore-=num1;
            else if(_questionIndex==3) _totalScore-=num2;
              if(_questionIndex >0)
              _questionIndex--;
            });
          },
          child: Icon(Icons.arrow_back,
          ) ,
    ),
      ),
    );
  }
}