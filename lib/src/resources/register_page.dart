import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xff3277D8)),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30,0,30,0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children:<Widget> [
              SizedBox(
                height: 5,
              ),

              Image.asset('assets/car.png'),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0,20,0,6),
                child: Text(
                  "Welcome Aboard",
                  style: TextStyle(fontSize: 22, color: Color(0xff333333)),
                ),
              ),
              Text(
                "Signup with iCab in simple steps",
                style: TextStyle(fontSize: 16, color: Color(0xff606470)),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(0,40,0,20),
              child: TextField(
                style: TextStyle( fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  labelText: "Name",
                  prefixIcon: Container(
                    width: 40, height: 10, child: Image.asset("assets/user.png"),
                  ),
                  border: OutlineInputBorder(
                    borderSide:
                      BorderSide(color: Color(0xffCED0D2), width: 1),
                    borderRadius: BorderRadius.all(Radius.circular(6))
                  )
                ),
              ),
              ),
              TextField(
                style: TextStyle( fontSize: 18, color: Colors.black, ),
                decoration: InputDecoration(
                    labelText: "Phone Number",
                    prefixIcon: Container(
                      width: 40, height: 10, child: Image.asset("assets/call.png"),
                    ),
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xffCED0D2), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                    )
                ),
              ),
              Padding(padding: const EdgeInsets.fromLTRB(0,20,0,20),
                child: TextField(
                  style: TextStyle( fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Container(
                        width: 40, child: Image.asset("assets/mail.png"),
                      ),
                      border: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: Color(0xffCED0D2), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(6))
                      )
                  ),
                ),
              ),
              TextField(
                style: TextStyle( fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Container(
                      width: 40, child: Image.asset("assets/lock.png"),
                    ),
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Color(0xffCED0D2), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,30,0,40),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                      child: Text(
                        "Signup",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))
                        )
                    ),
                  ),
                  ),
                ),
          Padding(
              padding: const EdgeInsets.fromLTRB(0,0,0,40),
            child: RichText(
                text: TextSpan(
                  text: "Already a User? ",
                  style: TextStyle(color: Color(0xff606470),
                  fontSize: 16),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Login now",
                      style: TextStyle(
                        color: Color(0xff3277D8), fontSize: 16
                      ),
                    ),
                  ]
            ),
          ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
