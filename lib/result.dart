import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function quiet;
  final int total;
  Result(this.quiet,this.total);

  String get resultPharase{
    String resultText;
    if(total >=70){
      resultText = "You Are Awesome !";
    }else if(total >=40){
      resultText = "Pretty likable !";
    }else {
      resultText = "You Are So Bad !";
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text("Your Score Is $total" ,style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
         Text(resultPharase,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
         textAlign: TextAlign.center,
         ),
         FlatButton
         (
           onPressed: quiet,
           child: Text(
             "Restart The App ",
             style: TextStyle(
               color: Colors.blue,
               fontSize: 30,
              ),
           ),
         ),
          
      ],
    )
    );
  }
}