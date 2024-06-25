import 'package:flutter/material.dart';
import 'package:geedesk/widget/appbar.dart';
import 'package:geedesk/widget/dropdown.dart';
import 'package:geedesk/widget/textfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GeeDesk',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f7f7),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBarWidget(title: 'Create Ticket',),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                      children: [
                        DropDownWidget(title: 'Room / Location', hintText: 'Select Room'),
                        SizedBox(height: 20,),
                        DropDownWidget(title: 'Category', hintText: 'Select Ticket Category'),
                        SizedBox(height: 20,),
                        TextfieldWidget(hintText: 'Heading *', height: 60,),
                        SizedBox(height: 20,),
                        TextfieldWidget(hintText: 'Description *', height: 120, maxLines: 10, fillColor: true,),
                        SizedBox(height: 20,),
                        DropDownWidget(title: 'Priority', hintText: 'Select Priority'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
              height: 50,
              color: Color(0xff2a3f54),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff2a3f54),
                ),
                  onPressed: (){}, child: Text('SUBMIT',
              style: TextStyle(
                fontSize: 18
              ),
              )))
        ],
      ),
    );
  }
}


