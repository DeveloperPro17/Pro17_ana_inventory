import 'dart:ffi';

import 'package:application/screens/Dashboardfix.dart';

import 'package:application/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

Widget buildForgotPassBtn() {
  return Container(
    alignment: Alignment.centerRight,
    child: TextButton(
      onPressed: () => print('forgot password pressed'),
      child: const Text(
        'Forgot Password?',
        style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Widget signUpbtn() {
  return Container();
}

class _LoginscreenState extends State<Loginscreen> {
  final _FormField = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();
  bool passtoggle = true;
  Future<UserCredential?> signInWithGoogle() async {
    // Create an instance of the firebase auth and google signin
    FirebaseAuth auth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = GoogleSignIn();

    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      // Check if the user canceled the sign-in process
      if (googleUser == null) {
        return null;
      }

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      // Create a new credentials
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in the user with the credentials
      final UserCredential userCredential =
          await auth.signInWithCredential(credential);
      return userCredential;
    } catch (error) {
      print('Error during Google Sign-In: $error');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    // final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Color.fromARGB(0, 255, 255, 255),
                        Color.fromARGB(255, 255, 255, 255),
                      ])),
                  child: SingleChildScrollView(
                      //  physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 120),
                      child: Form(
                        key: _FormField,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'Welcome ,',
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
                                        contentPadding:
                                            EdgeInsets.only(top: 14),
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
                                        } else if (passcontroller.text !=
                                            value) {
                                          return "INPUT CORRECT PASSWORD";
                                        }
                                      },
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            buildForgotPassBtn(),
                            InkWell(
                              onTap: () {
                                if (_FormField.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Dashboardfix()),
                                  );
                                  emailcontroller.clear();
                                  passcontroller.clear();
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
                                  'Log In',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                )),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            Row(
                              children: [
                                Expanded(
                                    child: Divider(
                                  color: Colors.black87,
                                )),
                                Text(
                                  ' OR LogIn With ',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black87),
                                ),
                                Expanded(child: Divider(color: Colors.black87)),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 25),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            padding: const EdgeInsets.fromLTRB(
                                                25.0, 10, 25.0, 10),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              side: const BorderSide(
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
                                              const SizedBox(width: 20),
                                              const Text(
                                                'Facebook',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ]))),
                                //const SizedBox(width: 35),
                                Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 25),
                                    //  width: double.nan,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            padding: const EdgeInsets.fromLTRB(
                                                30.0, 10, 30.0, 10),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              side: const BorderSide(
                                                  color: Colors.black,
                                                  width: 1.0),
                                            )),
                                        onPressed: () async {
                                          await signInWithGoogle();
                                          if (mounted) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    Dashboardfix(),
                                              ),
                                            );
                                          }
                                        },
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              SvgPicture.asset(
                                                'assets/images/logos_google-icon.svg', // Path to your SVG file in the assets folder
                                                width: 24,
                                                height: 24,
                                              ),
                                              const SizedBox(width: 20),
                                              const Text(
                                                'Google',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ]))),
                              ],
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Don't have an account?",
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
                                          builder: (context) => const Signup()),
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
                                        'Signup now',
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      )),
                                )
                              ],
                            ),
                            // Spacer()
                          ],
                        ),
                      )))
            ],
          ),
        ),
      ),
    ));
  }
}
