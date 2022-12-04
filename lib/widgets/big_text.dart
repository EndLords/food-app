import 'package:flutter/material.dart';
import 'package:food/widgets/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class Bigtext extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  Bigtext(
      {Key? key,
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.size = 0,
      this.overflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: GoogleFonts.roboto(
        fontSize: size <= 0 ? Dimensions.font20 : size,
        color: color,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
