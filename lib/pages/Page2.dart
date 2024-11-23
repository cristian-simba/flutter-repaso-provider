import 'package:flutter/material.dart';
import 'package:mi_provider/providers/TextProvider.dart';
import 'package:provider/provider.dart';

class Page2 extends StatefulWidget {
  const Page2({ Key? key }) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text("Page 2"),
            Text((context.watch<Textprovider>().text), style: TextStyle(fontSize: 50),),
            // ElevatedButton(onPressed: context.watch<Textprovider>().changeText, child: Text("XD")),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: _controller,  
                decoration: InputDecoration(
                  hintText: 'Escribe algo...',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            
            ElevatedButton(
              onPressed: () {
                Provider.of<Textprovider>(context, listen: false)
                    .updateText(_controller.text);
                _controller.clear(); 
              },
              child: Text('Actualizar texto'),
            ),
          ],
        ),
      ),
    );
  }
}