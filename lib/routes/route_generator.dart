import 'package:expense_book/routes/r1.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => FirstPage());

      case "/second":
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondPage(
              data: args,
            ),
          );
        }
        return errorRoute();

      default:
        return errorRoute();
    }
  }

  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        body: Container(
          alignment: Alignment.center,
          child: Text(
            "Error Page",
            style: TextStyle(
                color: Colors.red, fontSize: 24, fontWeight: FontWeight.w300),
          ),
        ),
      );
    });
  }
}
