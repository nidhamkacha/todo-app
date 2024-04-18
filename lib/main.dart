import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_todo_app/auth/create_acc.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Builder(
      builder: (BuildContext context) {
        // Get MediaQuery data
        final MediaQueryData mediaQuery = MediaQuery.of(context);

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ToDo App',
          home: CreateAcc(),
          // Pass MediaQuery data down to your app
          builder: (BuildContext context, Widget? child) {
            return MediaQuery(
              data: mediaQuery,
              child: child!,
            );
          },
        );
      },
    );
  }
}
