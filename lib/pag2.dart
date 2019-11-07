import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPag2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyPag2State();
  }
}

class _MyPag2State extends State<MyPag2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                alignment: Alignment.center,
                height: 150,
                color: Color(0xffEFDDFE),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Create Account",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff39373A),
                        fontSize: 35,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              emailAdres(),
              SizedBox(
                height: 10,
              ),
              loginButton(),
              SizedBox(
                height: 15,
              ),
              createAccount(),
            ],
          ),
        ),
      ),
    );
  }

  Widget emailAdres() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Name",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 4)),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Email Address",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 4),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Password",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 4),
            ),
          ),
        ],
      ),
    );
  }

  Widget loginButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(7.0),
          ),
          minWidth: 275,
          onPressed: () {},
          color: Color(0xff6622AA),
          child: Text(
            "Create Account",
            style: TextStyle(
              color: Color(0xffECE2F6),
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(
          height: 7,
        ),
        FlatButton(
          padding: EdgeInsets.symmetric(horizontal: 15),
          onPressed: () {},
          color: Colors.transparent,
          child: Text(
            "Forgot Password?",
            style: TextStyle(
                color: Color(0xff373737),
                fontSize: 16,
                decoration: TextDecoration.underline),
          ),
        )
      ],
    );
  }

  Widget createAccount() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Don't have an account"),
          FlatButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.transparent,
            child: Text(
              "Login",
              style: TextStyle(
                color: Color(0xff9B60D7),
              ),
            ),
          ),
        ],
      ),
      height: 210,
      color: Color(0xffEFDDFE),
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 15),
    );
  }
}
