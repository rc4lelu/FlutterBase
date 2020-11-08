import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestion = 0;
  int score = 0;
  var quiz = [
    {
      "title": "Question 1",
      "answers": [
        {
          "answer": "Answer 11",
          "correct": false
        },
        {
          "answer": "Answer 12",
          "correct": true
        },
        {
          "answer": "Answer 13",
          "correct": false
        }
      ]
    },
    {
      "title": "Question 2",
      "answers": [
        {
          "answer": "Answer 21",
          "correct": true
        },
        {
          "answer": "Answer 22",
          "correct": false
        },
        {
          "answer": "Answer 23",
          "correct": false
        }
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quiz page"),),
      body:
      (this.currentQuestion >= quiz.length) ?
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Score: ${(score/quiz.length*100).round()} %",
                  style: TextStyle(fontSize: 22, color: Colors.deepPurpleAccent),),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      this.currentQuestion = 0;
                      this.score = 0;
                    });
                  },
                  child: Text("Restart...", style: TextStyle(fontSize: 22),),
                  color: Colors.deepPurpleAccent,
                  textColor: Colors.white,
                  )
              ],
            )
          )
        :ListView(
          children: <Widget>[
            ListTile(
              title: Center(
                  child: Text("Question ${currentQuestion+1}/${quiz.length}",
                  style: TextStyle(fontSize: 22, color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.bold),)
              ),
            ),
            ListTile(
              title: Text(quiz[currentQuestion]["title"], style:
              TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            ...(quiz[currentQuestion]["answers"] as List<Map<String,Object>>).map((answer) {
              return ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: RaisedButton(
                    color: Colors.deepPurpleAccent, textColor: Colors.white,
                    onPressed: () {
                      setState(() {
                          ++currentQuestion;
                          if (answer["correct"] == true)
                            ++score;
                      });
                    },
                    child: Text(answer["answer"], style: TextStyle(fontSize: 22,),),
                  ),
                ),
              );
            })
          ],
        )
    );
  }
}
