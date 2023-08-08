import 'package:demoappst/screens/home/home_screen.dart';
import 'package:demoappst/src/resources/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30,0,30,0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget> [
              SizedBox(
                height: 100,
              ),
              Image.asset('assets/car.png'),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0,10,0,6),
                  child: Text(
                    "Welcom back!",
                    style: TextStyle(fontSize: 22, color: Color(0xff333333)),

                  ),
              ),

              Text(
                "Login to continue using iCab",
                style: TextStyle(fontSize: 16, color: Color(0xff606470)),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(0,130,0,20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "  Email",
                    prefixIcon: Container(
                      width: 15,
                      height: 5,
                      child: Image.asset("assets/mail.png"),
                    ),
                    border: OutlineInputBorder(
                      borderSide:
                        BorderSide(color: Color(0xffCED0D2),
                          width: 1
                        ),
                      borderRadius: BorderRadius.all(Radius.circular(6))
                    ),
                  ),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "  Password",
                  prefixIcon: Container(
                    width: 15,
                    height: 10,
                    child: Image.asset("assets/call.png"),
                  ),
                  border: OutlineInputBorder(
                    borderSide:
                      BorderSide(color: Color(0xffCED0D2), width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(6))
                  )
                ),
              ),
              Container(
                constraints: BoxConstraints.loose(Size(double.infinity, 30)),
                alignment: AlignmentDirectional.centerEnd,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0,10,0,0),
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(fontSize: 16, color: Color(0xff606470)),

                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0,30,0,40),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: clickbtn,
                    child: Text(
                      "Log In",
                      style: TextStyle(fontSize:18, color: Colors.white),
                    ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.blue,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6))
                          )
                      ),
                  ),
                )
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,0,40),
                  child: RichText(
                    text: TextSpan(
                      text: "New user?",
                      style: TextStyle(color: Color(0xff606470), fontSize: 16),
                      children: <TextSpan> [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                              ..onTap = (){
                            Navigator.push(
                              context,
                                MaterialPageRoute(builder: (context) => RegisterPage())
                                );
                        },
                          text: "Sign up for a new account",
                          style: TextStyle(
                            color: Color(0xff3277D8),
                            fontSize: 16)
                        )
                      ]
                    ),

                  ),
              )
            ],
          ),
        ),

      ),
    );
  }
  void clickbtn() {
      setState(() {
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
      });
  }
}


