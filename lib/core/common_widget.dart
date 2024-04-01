import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

kCircularProgressIndecator() {
  return const Center(
      //                   child: Shimmer.fromColors(
      // baseColor: kLightGreybgColor,
      // highlightColor: const Color.fromARGB(255, 216, 216, 216),
      // period: const Duration(milliseconds: 1500),
      // child: Text('Loading...',style: TextStyle(fontSize: 15),))
      child: CircularProgressIndicator(
    color: kCircularprogressIndecatorColor,
  ));
}

void showSnackBar(context, message, clr) {
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    backgroundColor: clr,
    behavior: SnackBarBehavior.floating,
    padding: const EdgeInsets.symmetric(vertical: 15),
    content: Text(message,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white)),
    duration: const Duration(seconds: 3),
  ));
}
