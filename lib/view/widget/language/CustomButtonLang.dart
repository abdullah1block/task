import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';

class CustomButtonLang extends StatelessWidget {
  final String? bttnText;
  final void Function()? onPressed;

  const CustomButtonLang(
      {Key? key, required this.bttnText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      width: double.infinity,
      child: MaterialButton(
        onPressed: onPressed,
        color: AppColor.primaryColor,
        textColor: Colors.white,
        child: Text(
          bttnText!,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
