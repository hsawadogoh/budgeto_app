import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color btnColor;
  final Color btnTextColor;
  final Color borderColor;
  final String btnText;
  final Function() onPressed;
  final bool loading;

  const CustomButton({
    super.key,
    this.loading = false,
    required this.btnColor,
    required this.btnTextColor,
    this.borderColor = Colors.transparent,
    required this.btnText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: btnColor,
        border: Border.all(color: borderColor),
        borderRadius: const BorderRadius.all(Radius.circular(15)),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: loading
            ? CircularProgressIndicator(
                color: btnTextColor,
              )
            : Text(
                btnText,
                style: TextStyle(
                  color: btnTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
      ),
    );
  }
}
