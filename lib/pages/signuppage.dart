import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:new_project/pages/otpVerificationPage.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
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
                        "Let's Go!",
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
                      child: Text(
                          "All account-related information will be sent to this mobile number. Please ensure that this number is on this phone.",
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w200,
                              color: Colors.grey),
                          textAlign: TextAlign.center),
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 20, right: 20),
                    ),
                    Container(
                      child: TextField(
                        cursorColor: Colors.orange[500],
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          label: Text(
                            "Mobile Number",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w200,
                                color: Colors.grey),
                          ),
                          prefixText: "+91 ",
                          prefixStyle: TextStyle(color: Colors.orange[500]),
                          suffixIcon: Icon(Icons.check_circle ,color:Colors.green, size: 32, ),
                          hintStyle: TextStyle(fontWeight: FontWeight.w200),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.orange),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                        ),
                      ),
                      padding: EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 10),
                    ),
                    Container(
                      child: Text(
                          "OTP will be sent to this number",
                          style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w200,
                              color: Colors.grey),
                          textAlign: TextAlign.end),
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 25, right: 25),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: SizedBox(
                    height: 45,
                    width: MediaQuery.of(context).size.width - 80,
                    child: ElevatedButton(
                        onPressed: (() {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => OtpVerificationPage(), ));
                        }),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.orange[500])), 
                        child: Text("Get OTP")),
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
