import 'package:campali/auth/ui/login.dart';
import 'package:campali/utils/widgets/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SignUpPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Theme.of(context).primaryColor,
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 200.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            style: Theme.of(context).textTheme.headline5,
                            decoration: InputDecoration(
                                labelText: 'EMAIL',
                                labelStyle:
                                    Theme.of(context).textTheme.headline5,
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).buttonColor)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).buttonColor))),
                          ),
                          SizedBox(height: 20.0),
                          TextField(
                            style: Theme.of(context).textTheme.headline5,
                            decoration: InputDecoration(
                                labelText: 'PHONE',
                                labelStyle:
                                    Theme.of(context).textTheme.headline5,
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).buttonColor)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).buttonColor))),
                          ),
                          SizedBox(height: 20.0),
                          TextField(
                            style: Theme.of(context).textTheme.headline5,
                            decoration: InputDecoration(
                                labelText: 'PASSWORD',
                                labelStyle:
                                    Theme.of(context).textTheme.headline5,
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).buttonColor)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).buttonColor))),
                            obscureText: true,
                          ),
                          SizedBox(height: 20.0),
                          TextField(
                            style: Theme.of(context).textTheme.headline5,
                            decoration: InputDecoration(
                                labelText: 'CONFIRM PASSWORD',
                                labelStyle:
                                    Theme.of(context).textTheme.headline5,
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).buttonColor)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Theme.of(context).buttonColor))),
                            obscureText: true,
                          ),
                          SizedBox(height: 40.0),
                          Container(
                            height: 40.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              shadowColor: Theme.of(context).accentColor,
                              color: Theme.of(context).buttonColor,
                              elevation: 7.0,
                              child: GestureDetector(
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    'Sign Up',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(color: ColorSets.colorWhite),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Or Sign Up In With',
                                  style: Theme.of(context).textTheme.headline5),
                              SizedBox(width: 20.0),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/social/google.png',
                                    width: 50.0,
                                    height: 50.0,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(width: 20.0),
                                  Image.asset(
                                    'assets/images/social/fb.png',
                                    width: 40.0,
                                    height: 40.0,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Already signed up ?',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      SizedBox(width: 5.0),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        child: Text(
                          'Login',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: ColorSets.colorBrand1),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}
