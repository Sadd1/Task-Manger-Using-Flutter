import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

const colorRed = Color.fromRGBO(231, 28, 36, 1);
const colorDark = Color.fromRGBO(136, 28, 32, 1);
const colorGreen = Color.fromRGBO(33, 191, 115, 1);
const colorBlue= Color.fromRGBO(52, 152, 219, 1.0);
const colorOrange = Color.fromRGBO(230, 126, 34, 1.0);
const colorWhite = Color.fromRGBO(255, 255, 255, 1.0);
const colorDarkBlue = Color.fromRGBO(44, 62, 88, 1.0);
const colorgray = Color.fromRGBO(135, 142, 150, 1.0);
const colorLight = Color.fromRGBO(211, 211, 211, 1.0);



TextStyle Head1Text(textColor){
  return TextStyle(
    color: textColor,
    fontSize: 28,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w700,

  );
}

TextStyle Head6Text(textColor){
  return TextStyle(
    color: textColor,
    fontSize: 16,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w400,

  );
}

InputDecoration AppInputDecoration(label) {
  return InputDecoration(
      focusedBorder: const OutlineInputBorder(
        borderSide: const BorderSide(color: colorGreen, width: 1),
      ),
      fillColor: colorWhite,
      filled: true,
      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
      enabledBorder: const OutlineInputBorder(
        borderSide: const BorderSide(color: colorWhite, width: 0.0),

      ),
      border: OutlineInputBorder(),
      labelText: label
  );
}


DecoratedBox AppDropDownStyle(child){

  return DecoratedBox(
    decoration: BoxDecoration(color: Colors.white,border:Border.all(color: Colors.white,width: 1), borderRadius: BorderRadius.circular(4), ),
    child: Padding(
      padding: EdgeInsets.only(left: 30,right: 30),
      child: child
    ),
  );
}

SvgPicture ScreenBackgroud(context){

  return SvgPicture.asset(
    'assets/images/bg1.svg',
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.cover,
  );
}
ButtonStyle AppButtonStyle(){

  return ElevatedButton.styleFrom(
    elevation: 1,
    padding: EdgeInsets.zero,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
  );
}

TextStyle ButtonTextStyle(){

  return TextStyle(
    fontSize: 14,
    fontFamily: 'poppins',
    fontWeight: FontWeight.w400
  );
}

Ink SuccessButtonChild(String ButtonText){

  return Ink(
    decoration: BoxDecoration(color: colorGreen,borderRadius: BorderRadius.circular(6)),
    child: Container(

      height: 45,
      alignment: Alignment.center,
      child: Text(ButtonText,style: ButtonTextStyle(),),
    ),
  );

}

void nSuccessToast(msg){

  Fluttertoast.showToast(

    msg:msg,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb:1,
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: colorGreen,
    textColor: colorWhite,
    fontSize:16.0

  );
}

void ErrorToast(msg){

  Fluttertoast.showToast(

      msg:msg,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb:1,
      toastLength: Toast.LENGTH_SHORT,
      backgroundColor: colorRed,
      textColor: colorWhite,
      fontSize:16.0

  );
}



