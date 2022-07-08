import 'package:flutter/material.dart';
import 'package:game/screen/games.dart';
import 'package:game/screen/second.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Games(),
        'page2':(context)=>Page2(),
      },
    ),
  );
}
