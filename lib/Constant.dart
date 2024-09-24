
import 'package:flutter/material.dart';

const primarycolor = Color(0xff2697ff);
const secondarycolor = Color(0xff2A2D3E);
const bycolor = Color(0xff212332);
const kPrimaryColor = Color(0xFFFF3B1D);
const kDarkBlackColor = Color(0xFF191919);
const kBgColor = Color(0xFFE7E7E7);
const kBodyTextColor = Color(0xFF666666);

class MediaQueryUtil {
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }
}

 String toSentenceCase(String text) {
  if (text.isEmpty) return text;
  return text[0].toUpperCase() + text.substring(1).toLowerCase();
}

 