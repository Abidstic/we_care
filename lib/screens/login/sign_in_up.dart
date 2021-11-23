import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:we_care/const.dart';

class SignInUp extends StatefulWidget {
  const SignInUp({Key? key}) : super(key: key);

  @override
  State<SignInUp> createState() => _SignInUpState();
}

class _SignInUpState extends State<SignInUp> {
  var _formKey = GlobalKey<FormState>();
  var textEditingControllerUsername = TextEditingController();
  var textEditingControllerPassword = TextEditingController();
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Sign in',
                    style: GoogleFonts.roboto(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                        color: textColor.withOpacity(1.0)),
                  ),
                  Text(
                    'Sign up',
                    style: GoogleFonts.roboto(
                        fontSize: 12.0,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold,
                        color: textColor.withOpacity(0.6)),
                  ),
                ],
              ),
              SingleChildScrollView(
                reverse: true,
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: screenH * .2,
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInOut,
                        width: screenW * 0.8,
                        // height: 40,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                          boxShadow: [
                            BoxShadow(
                                // color: Color.fromRGBO(0, 119, 182, 0.6),
                                color: const Color(0xff0077B6).withOpacity(.3),
                                offset:
                                    selected == 1 ? Offset(3, 3) : Offset(0, 0),
                                blurRadius: selected == 1 ? 6 : 2),
                          ],
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: TextFormField(
                            onTap: () {
                              setState(() {
                                selected = 1;
                              });
                            },
                            controller: textEditingControllerUsername,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              icon: const Icon(
                                Icons.person,
                                color: textColor,
                              ),
                              hintText: 'Username',
                              hintStyle: GoogleFonts.roboto(
                                fontSize: 12.0,
                                letterSpacing: 1.5,
                                color: textColor,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter user name';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenH * .05,
                      ),
                      AnimatedContainer(
                          duration: const Duration(milliseconds: 500),
                          width: screenW * 0.8,
                          // height: 40,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(15),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    // color: Color.fromRGBO(0, 119, 182, 0.4),
                                    // color: const Color(0xff003757),
                                    color:
                                        const Color(0xff0077B6).withOpacity(.3),
                                    offset: selected == 2
                                        ? Offset(3, 3)
                                        : Offset(0, 0),
                                    blurRadius: selected == 2 ? 9 : 2)
                              ],
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 0),
                            child: Center(
                              child: TextFormField(
                                onTap: () {
                                  setState(() {
                                    selected = 2;
                                  });
                                },
                                controller: textEditingControllerPassword,
                                obscureText: true,
                                decoration: InputDecoration(
                                  icon: const Icon(
                                    Icons.lock,
                                    color: textColor,
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Password',
                                  hintStyle: GoogleFonts.roboto(
                                      fontSize: 12.0,
                                      letterSpacing: 1.5,
                                      // height: 1.5,
                                      color: textColor.withOpacity(1.0)),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your password';
                                  }
                                  if (value.length < 6) {
                                    return 'Password must be 6 character';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          )),
                      SizedBox(
                        height: screenH * .05,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selected = 0;
                          });
                          if (_formKey.currentState!.validate()) {
                            print('valid');
                          } else {
                            print('invalid');
                          }
                        },
                        child: SizedBox(
                            height: 40,
                            width: screenW * 0.8,
                            child: Center(child: Text('Sign in'))),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
