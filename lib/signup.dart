import 'dart:ffi';

import 'package:application/Dashboardfix.dart';
import 'package:application/Loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

Widget signUpbtn() {
  return Container();
}

class _SignupState extends State<Signup> {
  final _FormField = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final fnamecontroller = TextEditingController();
  final lnamecontroller = TextEditingController();
  final numbercontroller = TextEditingController();
  final passcontroller = TextEditingController();
  final confirmcontroller = TextEditingController();
  bool passtoggle = true;

  @override
  Widget build(BuildContext context) {
    // final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: GestureDetector(
        child: Stack(
          children: <Widget>[
            Container(
                // padding: EdgeInsets.all(20),
                height: MediaQuery.sizeOf(context).height,
                // width: screenWidth > 600 ? 400 : 200,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color.fromARGB(0, 255, 255, 255),
                      Color.fromARGB(255, 255, 255, 255),
                    ])),
                child: SingleChildScrollView(
                    // physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 100),
                    child: Form(
                      key: _FormField,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'Create Account ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 60),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                'Email Address',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Container(
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black)),
                                height: 50,
                                child: TextFormField(
                                  controller: emailcontroller,
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(color: Colors.black87),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    contentPadding: EdgeInsets.only(top: 15),
                                  ),
                                  validator: (value) {
                                    bool emailvalid = RegExp(
                                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[A-Za-z]+")
                                        .hasMatch(value!);
                                    if (value!.isEmpty) {
                                      return "ENTER EMAIL";
                                    }

                                    if (!emailvalid) {
                                      return "ENTER VALID EMAIL";
                                    }
                                  },
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                'First Name',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Container(
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 50,
                                child: TextFormField(
                                  controller: fnamecontroller,
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(color: Colors.black87),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    contentPadding: EdgeInsets.only(top: 15),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter FirstName";
                                    }
                                  },
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                'Last Name',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Container(
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 50,
                                child: TextFormField(
                                  controller: lnamecontroller,
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(color: Colors.black87),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    contentPadding: EdgeInsets.only(top: 15),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter LastName";
                                    }
                                  },
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text(
                                'Phone Number',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Container(
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 50,
                                child: TextFormField(
                                  controller: numbercontroller,
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(color: Colors.black87),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.transparent)),
                                    contentPadding: EdgeInsets.only(top: 15),
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Enter PhoneNumber";
                                    } else if (numbercontroller.text.length >
                                        10) {
                                      return " LENGTH SHOULD BE MORE THAN 10 numbers";
                                    } else if (numbercontroller.text.length <
                                        10) {
                                      return "length should be less than 10 numbers";
                                    }
                                  },
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Password',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 50,
                                  child: TextFormField(
                                    controller: passcontroller,
                                    obscureText: passtoggle,
                                    style: TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                      filled: true,
                                      contentPadding: EdgeInsets.only(top: 14),
                                      suffix: InkWell(
                                        onTap: () {
                                          setState(() {
                                            passtoggle = !passtoggle;
                                          });
                                        },
                                        child: Icon(
                                          passtoggle
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "ENTER PASSWORD";
                                      } else if (passcontroller.text.length <
                                          6) {
                                        return "PASSWORD LENGTH SHOULD BE MORE THAN 6 CHARACTERS";
                                      }
                                    },
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Confirm Password',
                                style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Container(
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 50,
                                  child: TextFormField(
                                    controller: confirmcontroller,
                                    obscureText: passtoggle,
                                    style: TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(top: 14),
                                      suffix: InkWell(
                                        onTap: () {
                                          setState(() {
                                            passtoggle = !passtoggle;
                                          });
                                        },
                                        child: Icon(
                                          passtoggle
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return " RE-ENTER PASSWORD";
                                      } else if (passcontroller.text !=
                                          confirmcontroller.text) {
                                        return "PASSWORD NOT correct";
                                      } else if (passcontroller.text.length <
                                          6) {
                                        return "PASSWORD LENGTH SHOULD BE MORE THAN 6 CHARACTERS";
                                      }
                                    },
                                  ))
                            ],
                          ),

                          const SizedBox(
                            height: 25,
                          ),
                          InkWell(
                            onTap: () {
                              if (_FormField.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Loginscreen()),
                                );
                                emailcontroller.clear();
                                passcontroller.clear();
                                confirmcontroller.clear();
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 17),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              )),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),

                          Row(
                            children: [
                              Expanded(
                                  child: Divider(
                                color: Colors.black87,
                              )),
                              Text(
                                ' OR SIGNUP WITH ',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black87),
                              ),
                              Expanded(
                                  child: Divider(
                                color: Colors.black87,
                              )),
                            ],
                          ),
                          // SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                  padding: EdgeInsets.symmetric(vertical: 25),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          padding: EdgeInsets.fromLTRB(
                                              25.0, 10, 25.0, 10),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            side: BorderSide(
                                                color: Colors.black,
                                                width: 1.0),
                                          )),
                                      onPressed: () {},
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/images/logos_facebook.svg', // Path to your SVG file in the assets folder
                                              width: 24,
                                              height: 24,
                                            ),
                                            SizedBox(width: 20),
                                            Text(
                                              'Facebook',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ]))),
                              //const SizedBox(width: 35),
                              Container(
                                  padding: EdgeInsets.symmetric(vertical: 25),
                                  //  width: double.nan,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          padding: EdgeInsets.fromLTRB(
                                              30.0, 10, 30.0, 10),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            side: BorderSide(
                                                color: Colors.black,
                                                width: 1.0),
                                          )),
                                      onPressed: () {},
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/images/logos_google-icon.svg', // Path to your SVG file in the assets folder
                                              width: 24,
                                              height: 24,
                                            ),
                                            SizedBox(width: 20),
                                            const Text(
                                              'Google',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ]))),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Already have an account?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Loginscreen()),
                                  );
                                },
                                child: Container(
                                    height: 50,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      // color: Colors.black,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Text(
                                      'LogIn now',
                                      style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    )),
                              )
                            ],
                          ),
                        ],
                      ),
                    )))
          ],
        ),
      ),
    ));
  }
}
