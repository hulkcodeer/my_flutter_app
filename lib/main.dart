import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// 3가지 중에 하나는 무조건 상속받아야 한다.
// 그중에 StatelessWidget부터 상속받아서 해본다.
// App Root에 Return해야 하는 앱이 두개 있는데, 하나는 material, 다른 하나는 cupertino 앱을 리턴하는것
// scaffold는 무조건 써야한다.
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('Hellow world!'),
      ),
    );
  }
}