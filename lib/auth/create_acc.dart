import 'package:flutter/material.dart';
import 'package:flutter_todo_app/auth/login_screen.dart';
import 'package:flutter_todo_app/common/global_text.dart';
import 'package:flutter_todo_app/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:todo_app/auth/login.dart';
// import 'package:todo_app/constants/colors.dart';

class CreateAcc extends StatefulWidget {
  const CreateAcc({super.key});

  @override
  State<CreateAcc> createState() => _CreateAccState();
}

final _formKey = GlobalKey<FormState>();
final _EmailController = TextEditingController();
final _PhoneController = TextEditingController();
final _CreatepassController = TextEditingController();
final _ConfirmpassController = TextEditingController();
bool _validate = false;

class _CreateAccState extends State<CreateAcc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   backgroundColor: tdBGColor,
      //   appBar: AppBar(
      //     title: Text('Create Account'),
      //     centerTitle: true,
      //     backgroundColor: Colors.blue,
      //   ),
      //   body: Form(
      //     key: _formKey,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Text('Email'),
      //         Container(
      //           padding: EdgeInsets.symmetric(horizontal: 15),
      //           decoration: BoxDecoration(
      //             color: Colors.white,
      //             borderRadius: BorderRadius.circular(20),
      //           ),
      //           child: TextFormField(
      //             validator: (value) {
      //               if (value == null || value.isEmpty) {
      //                 return 'Please enter Email address';
      //               }
      //               return null;
      //             },
      //             controller: _EmailController,
      //             decoration: InputDecoration(
      //                 contentPadding: EdgeInsets.all(0),
      //                 border: OutlineInputBorder(
      //                   borderSide: const BorderSide(color: Colors.red, width: 4),
      //                   borderRadius: BorderRadius.circular(12),
      //                 ),
      //                 errorText: _validate ? 'Value Cant be empty' : null,
      //                 hintText: 'Email',
      //                 hintStyle: TextStyle(color: tdGrey),
      //                 prefixIconConstraints:
      //                     BoxConstraints(maxHeight: 20, minWidth: 25)),
      //           ),
      //         ),
      //         SizedBox(
      //           height: 15,
      //         ),
      //         Text('Phone No'),
      //         Container(
      //           padding: EdgeInsets.symmetric(horizontal: 15),
      //           decoration: BoxDecoration(
      //             color: Colors.white,
      //             borderRadius: BorderRadius.circular(20),
      //           ),
      //           child: TextFormField(
      //             validator: (value) {
      //               if (value == null || value.isEmpty) {
      //                 return 'Please enter Phone Number';
      //               }
      //               return null;
      //             },
      //             controller: _PhoneController,
      //             decoration: InputDecoration(
      //                 contentPadding: EdgeInsets.all(0),
      //                 border: InputBorder.none,
      //                 hintText: 'Enter Phone No',
      //                 hintStyle: TextStyle(color: tdGrey),
      //                 prefixIconConstraints:
      //                     BoxConstraints(maxHeight: 20, minWidth: 25)),
      //           ),
      //         ),
      //         SizedBox(
      //           height: 15,
      //         ),
      //         Text('Create Password'),
      //         Container(
      //           padding: EdgeInsets.symmetric(horizontal: 15),
      //           decoration: BoxDecoration(
      //             color: Colors.white,
      //             borderRadius: BorderRadius.circular(20),
      //           ),
      //           child: TextFormField(
      //             validator: (value) {
      //               if (value == null || value.isEmpty) {
      //                 return 'Please enter Password';
      //               }
      //               return null;
      //             },
      //             controller: _CreatepassController,
      //             decoration: InputDecoration(
      //                 contentPadding: EdgeInsets.all(0),
      //                 border: InputBorder.none,
      //                 hintText: 'Enter Password',
      //                 hintStyle: TextStyle(color: tdGrey),
      //                 prefixIconConstraints:
      //                     BoxConstraints(maxHeight: 20, minWidth: 25)),
      //           ),
      //         ),
      //         SizedBox(
      //           height: 15,
      //         ),
      //         Text('Confirm password'),
      //         Container(
      //           padding: EdgeInsets.symmetric(horizontal: 15),
      //           decoration: BoxDecoration(
      //             color: Colors.white,
      //             borderRadius: BorderRadius.circular(20),
      //           ),
      //           child: TextFormField(
      //             validator: (value) {
      //               if (value == null || value.isEmpty) {
      //                 return 'Please enter Password';
      //               }
      //               return null;
      //             },
      //             controller: _ConfirmpassController,
      //             decoration: InputDecoration(
      //                 contentPadding: EdgeInsets.all(0),
      //                 border: InputBorder.none,
      //                 hintText: 'Confirm Password',
      //                 hintStyle: TextStyle(color: tdGrey),
      //                 prefixIconConstraints:
      //                     BoxConstraints(maxHeight: 20, minWidth: 25)),
      //           ),
      //         ),
      //         SizedBox(
      //           height: 15,
      //         ),
      //         Align(
      //             alignment: Alignment.center,
      //             child: ElevatedButton(
      //                 onPressed: () async {
      //                   if (_formKey.currentState!.validate()) {
      //                     // If the form is valid, display a snackbar. In the real world,
      //                     // you'd often call a server or save the information in a database.
      //                     Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => LoginScreen()));
      //                   }
      //                   final SharedPreferences prefs =
      //                       await SharedPreferences.getInstance();
      //                   prefs.setString('email', _EmailController.text);
      //                   prefs.setString('phoneno', _PhoneController.text);
      //                   prefs.setString('createpass', _CreatepassController.text);
      //                   prefs.setString(
      //                       'confirmpas', _ConfirmpassController.text);
      //                   // Navigator.pushReplacement(
      //                   //     context,
      //                   //     MaterialPageRoute(
      //                   //         builder: (context) => LoginScreen()));
      //                 },
      //                 child: Text("Create Account")))
      //       ],
      //     ),
      //   ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                  text: "WELCOME",
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 32,
                ),
                Center(
                  child: Container(
                    height: 520,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 2, // Increased blurRadius
                        ),
                      ],
                    ),
                    child: Column(
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
                                return 'Please enter Phone Number';
                              }
                              return null;
                            },
                            controller: _PhoneController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              hintStyle: TextStyle(color: tdGrey),
                              hintText: 'Phone Number',
                              suffixIcon: Icon(Icons.phone_outlined),
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
                        SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                          height: 66,
                          width: 290,
                          child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Confirm Password';
                              }
                              return null;
                            },
                            controller: _EmailController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              hintStyle: TextStyle(color: tdGrey),
                              hintText: 'Confirm Password',
                              suffixIcon: Icon(Icons.remove_red_eye_outlined),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: SizedBox(
                            height: 55,
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LoginScreen()));
                                    final SharedPreferences prefs =
                                        await SharedPreferences.getInstance();
                                    prefs.setString(
                                        'email', _EmailController.text);
                                    prefs.setString(
                                        'phoneno', _PhoneController.text);
                                    prefs.setString('createpass',
                                        _CreatepassController.text);
                                    prefs.setString('confirmpas',
                                        _ConfirmpassController.text);
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15))),
                                child: Text(
                                  "Create Account",
                                  style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
