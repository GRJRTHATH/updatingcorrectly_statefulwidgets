import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
          color: Colors.deepPurple,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no1Controller,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: no2Controller,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(21.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                                  int.parse(no1Controller.text.toString());
                              var no2 =
                                  int.parse(no2Controller.text.toString());
                              var sum = no1 + no2;

                              result = "the sum of the $no1 and $no2 is $sum";
                              setState(() {});
                            },
                            child: Text('Add')),
                        ElevatedButton(
                            onPressed: () {
                              var no1 =
                                  int.parse(no1Controller.text.toString());
                              var no2 =
                                  int.parse(no2Controller.text.toString());
                              var div = no1/no2;
                              result = "the Div of the $no1 and $no2 is $div";
                              setState(() {});
                            },
                            child: Text('Div')),
                        ElevatedButton(onPressed: () {
                          var no1 =
                          int.parse(no1Controller.text.toString());
                          var no2 =
                          int.parse(no2Controller.text.toString());
                          var mul = no1*no2;
                          result = "the multiplication of the $no1 and $no2 is $mul";
                          setState(() {});
                        }, child: Text('Mul')),
                        ElevatedButton(onPressed: () {
                          var no1 =
                          int.parse(no1Controller.text.toString());
                          var no2 =
                          int.parse(no2Controller.text.toString());
                          var diff = no1-no2;
                          result = "the Difference between  $no1 and $no2 is $diff";
                          setState(() {

                          });

                        }, child: Text('Sub')),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(21),
                    child: Text(
                      result,
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
