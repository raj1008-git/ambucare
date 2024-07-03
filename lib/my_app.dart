import 'package:ambucare/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 241, 250, 9),
      // appBar: AppBar(
      //   toolbarHeight: 60,
      //   backgroundColor: Colors.pink,
      //   title: Text(
      //     'Ambucare',
      //     style: TextStyle(
      //         color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
      //   ),
      // ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Text(
                'Ambucare',
                style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
            ),
            SizedBox(height: 100),
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/image/ambu_background.png'),
              )),
            ),
            SizedBox(
              height: 0,
            ),
            Center(
              child: Text(
                'Adding Years to Your Life & ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'Life to Your Years ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              padding:
                  EdgeInsets.only(left: 110, right: 110, top: 20, bottom: 20),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              color: Colors.white,
              child: Row(children: [
                Icon(
                  Icons.calendar_month,
                  color: Colors.pink,
                  size: 22,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Book Now',
                  style: TextStyle(color: Colors.pink, fontSize: 22),
                ),
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              padding:
                  EdgeInsets.only(left: 90, right: 90, top: 20, bottom: 20),
              onPressed: () => launchUrlString('tel://102'),
              child: Row(
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.white,
                    size: 22,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Emergency Call',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
              color: Colors.pink,
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
