import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomFormField extends StatefulWidget {
  final String title;
  final TextEditingController? controller;
  final String? helperText;
  final bool isPassword;
  final bool isNumber;
  final bool isEmail;
  final bool isDate;

  const CustomFormField({
    this.isPassword = false,
    this.isNumber = false,
    Key? key,
    required this.title,
    this.controller,
    this.helperText,
    this.isEmail = false,
    this.isDate = false,
  }) : super(key: key);

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: blackTextStyle.copyWith(
            fontWeight: medium,
          ),
        ),
        const SizedBox(
          height: kDefaultPadding * .5,
        ),
        TextFormField(
          controller: widget.controller,
          decoration: widget.isPassword == true
              ? InputDecoration(
                  helperText: widget.helperText,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  contentPadding: const EdgeInsets.all(kDefaultPadding * .5),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    child: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off,
                      color: primaryColor,
                    ),
                  ),
                )
              : InputDecoration(
                  helperText: widget.helperText,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  contentPadding: const EdgeInsets.all(kDefaultPadding * .5),
                ),
          obscureText: widget.isPassword == true ? !obscureText : obscureText,
          keyboardType: widget.isNumber == true ? TextInputType.number : TextInputType.name,
        ),
      ],
    );
  }
}
