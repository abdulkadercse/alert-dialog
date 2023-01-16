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
      debugShowCheckedModeBanner: false,
      title: 'Alert Dialog',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  const HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Alert Dialog"),centerTitle: true,),
      body: Center(
        child: ElevatedButton(onPressed: ()async{
          return showDialog(context: context, builder: (context){
            return AlertDialog(
              title: const Text("Alert Dialog"),
              content: const Text("Are you exit this app?"),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("Yes"),
                    Text("No"),
                  ],
                )
              ],
            );
          });
        }, child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Click",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
        )),
      ),
    );
  }
}

