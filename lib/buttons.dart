import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                print('Hello');
              },
              //splashColor: Colors.yellow,
              color: Colors.green,
              height: 55,
              minWidth: 200,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              child: Text('Material Button'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal),
              ),
              onPressed: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text("Elevated Button"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            SizedBox(
              height: 20,
            ),
            TextButton(onPressed: () {}, child: Text("Text Button")),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(onPressed: () {}, child: Text("Outlined Button")),
            SizedBox(
              height: 20,
            ),
            Chip(
              label: Text("Chip"),
              onDeleted: () {},
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                print('Hiii');
              },
              child: Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: Text("Ink Well"),
            ),
            SizedBox(
              height: 30,
            ),
            InkResponse(
              onTap: () {},
              child: Text("Ink Response"),
            ),
          ],
        ),
      ),
    );
  }
}
