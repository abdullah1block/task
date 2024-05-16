import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("text"),
      ),
      body: Container(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            OtpTextField(
              borderRadius: BorderRadius.circular(20,),
              fieldWidth: 50,
              numberOfFields: 5,
              borderColor: const Color(0xFF512DA8),
              showFieldAsBox: true,
              onCodeChanged: (String code) {},

                //rns when every text field is filled
              onSubmit: (String verifyCode){

              }
            ),
          ],
        ),
      ),
    );
  }
}
