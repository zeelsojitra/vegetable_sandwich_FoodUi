import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                print('hello');
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              //splashColor: Colors.green,
              height: 50,
              minWidth: 200,
              color: Colors.black,
              child: Text(
                'material Button',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Text('ElevatedButton'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_a_photo,
                size: 40,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
            ),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text(
                    'Outline Button',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Chip(
              label: Text('Chip Buttons'),
              onDeleted: () {},
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                print('gester');
              },
              child: Container(
                height: 150,
                width: 150,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Text('InkWell'),
            ),
            SizedBox(
              height: 20,
            ),
            InkResponse(
              onTap: () {
                print('InkResponse');
              },
              child: Text('inkResponse'),
            )
          ],
        ),
      ),
    );
  }
}
