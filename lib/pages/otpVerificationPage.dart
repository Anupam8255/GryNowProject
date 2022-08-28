import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_project/pages/welcomePage.dart';

class OtpVerificationPage extends StatefulWidget {
  const OtpVerificationPage({Key? key}) : super(key: key);

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  bool formChanged = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    child: Image.network(
                      'https://png2.cleanpng.com/sh/dd53d46138a3273d60baaecac08547de/L0KzQYm3U8MyN6ltiZH0aYP2gLBuTfNifJZ3gdDwLXbyf7W0gB9ueKZ5feQ2aXPyfsS0jP9od15qjtd3dD3wcbBohBVubZ95RdVqdHX1ebBuTcViapc5UKlsZEG7RIWATsc2PGc3UaI9MUW1QoWBVcM4Omk6UKQ3cH7q/kisspng-catering-food-computer-icons-logo-event-management-catering-5abf487cd18447.7546290415224853728582.png',
                      width: 100,
                    ),
                  ),
                  Container(
                    child: Text(
                      "Verification",
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 60, bottom: 15),
                  ),
                  Container(
                    child: Text("Please enter the OTP:",
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                            color: Colors.grey),
                        textAlign: TextAlign.center),
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 20, right: 20),
                  ),
                  Container(
                    child: Form(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: 50,
                            child: TextFormField(
                              cursorColor: Colors.orange,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orange))
                              ),
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                  formChanged = true;
                                }
                              },
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1)
                              ],
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(
                            width: 50,
                            child: TextFormField(
                              cursorColor: Colors.orange,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orange))
                              ),
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                                else if(value.length == 0 && formChanged == true) {
                                  FocusScope.of(context).previousFocus();
                                }
                              },
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1)
                              ],
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(
                            width: 50,
                            child: TextFormField(
                              cursorColor: Colors.orange,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orange))
                              ),
                              onChanged: (value) {
                                
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                                else if(value.length == 0 && formChanged == true) {
                                  FocusScope.of(context).previousFocus();
                                }
                              },
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1)
                              ],
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          SizedBox(
                            width: 50,
                            child: TextFormField(
                              cursorColor: Colors.orange,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.orange))
                              ),
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                                else if(value.length == 0 && formChanged == true) {
                                  FocusScope.of(context).previousFocus();
                                }
                              },
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(1)
                              ],
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                    ),
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 50, bottom: 10),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 60),
                child: SizedBox(
                  height: 45,
                  width: MediaQuery.of(context).size.width - 80,
                  child: ElevatedButton(
                      onPressed: (() {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => WelcomePage(),
                        ));
                      }),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.orange[500])),
                      child: Text("Verify")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
