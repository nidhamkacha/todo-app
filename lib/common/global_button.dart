import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  const GlobalButton({super.key, this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: Text(
            text ?? "",
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
          )),
    );
  }
}
