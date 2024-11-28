import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF272727),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /***************************** Image *****************************/
            Container(
              width: 240.0, // Diameter of the circle
              height: 240.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/me.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            /***************************** Name *****************************/
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              width: 240.0, // Diameter of the circle
              height: 70.0,
              child: const Center(
                child: Text(
                  "Ehab Magdy",
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Color(0xFFE6C999),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            /**************************** position ****************************/
            // ignore: sized_box_for_whitespace
            Container(
              width: 250.0, // Diameter of the circle
              height: 40.0,
              child: const Center(
                child: Text(
                  "Embedded Software Engineer",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xFFE6C999),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            /**************************** Line *****************************/
            const Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Divider(
                color: Color(0xFFE6C999),
                thickness: 1.0,
                indent: 50,
                endIndent: 50,
              ),
            ),
            /****************************** phone ***************************/
            const Card(
              margin: EdgeInsets.symmetric(horizontal: 22.0, vertical: 5.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(14.0)),
              ),
              color: Color(0xFFE6C999),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  size: 32,
                  color: Color(0xFF272727),
                ),
                title: Text(
                  '(+20) 1006085975',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            /******************************* e-mail **************************/
            const Card(
              margin: EdgeInsets.symmetric(horizontal: 22.0, vertical: 5.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(14.0)),
              ),
              color: Color(0xFFE6C999),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  size: 32,
                  color: Color(0xFF272727),
                ),
                title: Text(
                  'ehab4zu@gmail.com',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}



/*   old code of phone number
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              width: 350.0,
              height: 45.0,
              decoration: const BoxDecoration(
                color: Color(0xFFE6C999),
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Icon(
                      Icons.phone,
                      size: 35.0,
                      color: Color(0xFF272727),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 57.0),
                    child: Text(
                      "(+20) 1006085975",
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Color(0xFF272727),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              )
            ),
*/