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
        primarySwatch: Colors.blue,
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

  Widget getContainer(String title, Color color) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
          ),

          borderRadius: BorderRadius.circular(15)),
      child: Text(
        title,
        style: const TextStyle(fontSize: 30,color: Colors.white),
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: GridView(
        padding: const EdgeInsets.all(15),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
        children:<Widget>[
          getContainer("الجزر",Colors.deepOrangeAccent),
          getContainer("البندورة",Colors.red),
          getContainer("الملفوف",Colors.greenAccent),
          getContainer("ليتشي",Colors.purpleAccent),
          getContainer("الموز",Colors.yellow),
          getContainer("اللمون", Colors.lime),
          getContainer("تفاح", Colors.tealAccent),
          getContainer("جوز هند", Colors.brown),
          getContainer("عنب", Colors.indigoAccent),
          getContainer("جرجير", Colors.pink),
          getContainer("بصل", Colors.orangeAccent),
          getContainer("خيار", Colors.green),

        ],


      ),
    );

  }
}
