import 'package:flutter/material.dart';
import 'signup.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        '/signup': (BuildContext context) => new SignUpPage()
      },
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 115.0, 0.0, 0.0),
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.fromLTRB(10.0, 175.0, 0.0, 0.0),
                    child: Text(
                      "There",
                      style: TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.fromLTRB(165.0, 172.0, 0.0, 0.0),
                    child: Text(
                      ".",
                      style: TextStyle(
                        fontSize: 65.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
            ),
                  Container(
                    padding: EdgeInsets.only(top: 40.0),
                    child:  TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        )
                      ),
                    ),
                  ),

            Container(
              padding: EdgeInsets.only(top: 40.0),
              child:  TextField(
                decoration: InputDecoration(
                    labelText: "PassWord",
                    labelStyle: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    )
                ),
                obscureText: true,
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment(1.0,0.0),
              padding: EdgeInsets.only(right: 10.0),
              child: InkWell(
                onTap: () {},
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              height: 40.0,
              child: Material(
              borderRadius: BorderRadius.circular(20.0),
              shadowColor: Colors.green,
              color: Colors.green,
              elevation: 7.0,
              child: GestureDetector(
              onTap: () {},
                child: Center(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

              ),
            ),

            ),
            SizedBox(height: 30.0),
            Container(
              height: 40.0,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color:Colors.black,
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    "Log in with Facebook",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
              "Need to Spotify?",
                style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                   ),
                  ),
              SizedBox(width: 2.0),

              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/signup');
                },
                child: Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )

                  ],

                ),
              ),

          ],

      ),

      ),
    );
  }
}
