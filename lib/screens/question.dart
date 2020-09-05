import 'package:expense_book/widgets/widgets.dart';
import 'package:flutter/material.dart';

class QuestionPlace extends StatelessWidget {
  final String question;
  const QuestionPlace({this.question});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20, 40, 20, 40),
      decoration: BoxDecoration(
        color: Colors.teal.shade200,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(question,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2),
          Wrap(
            alignment: WrapAlignment.start,
            spacing: 10,
            children: [
              CustomChips(
                title: "Bed",
              ),
              CustomChips(
                title: "Could Be Better",
              ),
              CustomChips(
                title: "Ok",
              ),
              CustomChips(
                title: "Good",
              ),
              CustomChips(
                title: "Very Exciting",
              ),
            ],
          )
        ],
      ),
    );
  }
}
