import 'package:flutter/material.dart';
import 'package:flutter_todo_app/auth/create_acc.dart';
import 'package:flutter_todo_app/common/global_text.dart';
import 'package:flutter_todo_app/constants/colors.dart';
import 'package:flutter_todo_app/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final _formKey = GlobalKey<FormState>();
final _EmailController = TextEditingController();
final _CreatepassController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  String Email = "";
  String Password = "";
  void getInstance() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      Email = prefs.getString('email')!;
      Password = prefs.getString('confirmpas')!;
    });
  }

  @override
  void initState() {
    getInstance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Form(
      //   key: _formKey,
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text('Email'),
      //       Container(
      //         padding: EdgeInsets.symmetric(horizontal: 15),
      //         decoration: BoxDecoration(
      //           color: Colors.white,
      //           borderRadius: BorderRadius.circular(20),
      //         ),
      //         child: TextFormField(
      //           validator: (value) {
      //             if (value == null || value.isEmpty) {
      //               return 'Please enter Email address';
      //             }
      //             return null;
      //           },
      //           controller: _EmailController,
      //           decoration: InputDecoration(
      //               contentPadding: EdgeInsets.all(0),
      //               border: InputBorder.none,
      //               hintText: 'Email',
      //               hintStyle: TextStyle(color: tdGrey),
      //               prefixIconConstraints:
      //                   BoxConstraints(maxHeight: 20, minWidth: 25)),
      //         ),
      //       ),
      //       SizedBox(
      //         height: 15,
      //       ),
      //       Text('PassWord'),
      //       Container(
      //         padding: EdgeInsets.symmetric(horizontal: 15),
      //         decoration: BoxDecoration(
      //           color: Colors.white,
      //           borderRadius: BorderRadius.circular(20),
      //         ),
      //         child: TextFormField(
      //           validator: (value) {
      //             if (value == null || value.isEmpty) {
      //               return 'Please enter Password';
      //             }
      //             return null;
      //           },
      //           controller: _passwordController,
      //           decoration: InputDecoration(
      //               contentPadding: EdgeInsets.all(0),
      //               border: InputBorder.none,
      //               hintText: 'Enter Phone No',
      //               hintStyle: TextStyle(color: tdGrey),
      //               prefixIconConstraints:
      //                   BoxConstraints(maxHeight: 20, minWidth: 25)),
      //         ),
      //       ),
      //       Align(
      //         alignment: Alignment.center,
      //         child: ElevatedButton(
      //           onPressed: () {
      //             if (_formKey.currentState!.validate()) {
      //               Navigator.push(context,
      //                   MaterialPageRoute(builder: (context) => Home()));
      //             }
      //           },
      //           child: Text("Login Account"),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 23.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 64,
                  ),
                  Image.asset(
                    "assets/images/pattern.png",
                    scale: 3,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  GlobalText(
                    text: "Hello!",
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                  GlobalText(
                    text: "WELCOME BACK",
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Center(
                    child: Container(
                      height: 327,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 0.5,
                          ),
                        ],
                      ),
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            height: 66,
                            width: 290,
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Email address';
                                }
                                return null;
                              },
                              controller: _EmailController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                hintStyle: TextStyle(color: tdGrey),
                                hintText: 'Email',
                                suffixIcon: Icon(Icons.email_outlined),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.red, width: 4),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                            height: 66,
                            width: 290,
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter Create Password';
                                }
                                return null;
                              },
                              controller: _CreatepassController,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                hintStyle: TextStyle(color: tdGrey),
                                hintText: 'Create Password',
                                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                                border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.red, width: 4),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                          GlobalText(
                            text: "Forgot Password",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            // child: GlobalButton(
                            //   text: "Log in",
                            //   onPressed: () => Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //         builder: (context) => BottomNavbar(),
                            //       )),
                            // ),
                            child: SizedBox(
                              height: 55,
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () async {
                                    if (_formKey.currentState!.validate()) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Home()));
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15))),
                                  child: Text(
                                    "Log In",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CreateAcc(),
                                  ));
                            },
                            child: GlobalText(
                              text: "Sign up",
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
