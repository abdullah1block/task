import 'package:flutter/material.dart';

class CustomFormAuth extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData iconData;
  final TextEditingController? myController;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? obSecTxt;
  final void Function()? onTapIcon;

  const CustomFormAuth(
      {Key? key,
      required this.hintText,
      required this.labelText,
      required this.iconData,
      required this.myController,
      required this.valid,
      required this.isNumber,
         this.obSecTxt=false,
        this.onTapIcon,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.only(top: 20),
      child: TextFormField(
        obscureText:obSecTxt! ,
        keyboardType:  isNumber?const TextInputType.numberWithOptions(decimal: true):TextInputType.text,
        validator: valid,
        controller: myController,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 14,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 9, horizontal: 30),
            label: Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child:  Text(labelText)),
            suffixIcon:  InkWell(
                onTap: onTapIcon,
                child: Icon(iconData)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            )),
      ),
    );
  }
}
