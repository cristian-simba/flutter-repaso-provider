import 'package:flutter/material.dart';
import 'package:mi_provider/providers/CountProvider.dart';
import 'package:provider/provider.dart';

class Page1 extends StatefulWidget {
  const Page1({ Key? key }) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("Page 1"),
          Text(context.watch<Countprovider>().counter.toString(), style: TextStyle(fontSize: 50),),
          ElevatedButton(
            onPressed: context.watch<Countprovider>().increment, 
            child: Text("Increment")
          )
        ],
      )
    );
  }
}