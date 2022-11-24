import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  var i= 0;
  void onPressOption() {
    if(i==0){
      i=1;
    }else{
      i=0;
    }
    print(i);
  }

  @override
  Widget build(BuildContext context) {
    var options = ["Apple", "Banana", "Orange"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('title'),
        ),
        body: Column(
          children: [
            Text(options.elementAt(i)),
            ElevatedButton(
                onPressed: onPressOption, child: const Text("Option 1")),
            ElevatedButton(
                onPressed: onPressOption, child: const Text("Option 2")),
            ElevatedButton(
                onPressed: onPressOption, child: const Text("Option 3"))
          ],
        ),
      ),
    );
  }
}
