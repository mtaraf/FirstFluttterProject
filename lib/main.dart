import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Id(),
  ));
}

class Id extends StatefulWidget{
  @override
  State<Id> createState() => _IdState();
}

class _IdState extends State<Id> {

  int level = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[900],

      appBar: AppBar(
        title: Text('ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level++;
          });
        },
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add),
      ),

      body:
      Padding(
        padding: const EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/girl.jpg'),
                radius: 40.0,
              ),
            ),
            const Divider(
              height: 60.0,
              color: Colors.grey,
              thickness: 1.0,
            ),
            const Text(
              'Name',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Chun-li',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 40.0,
              ),
            ),
            const SizedBox(height: 30.0,),
            const Text(
              'Current Level',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              '$level',
              style: const TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 40.0,
              ),
            ),
            const SizedBox(height: 40.0,),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 20.0,),
                const Text(
                  'chun-li@google.com',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}
