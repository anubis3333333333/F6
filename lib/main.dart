import "package:flutter/material.dart";
// прост виджет для запуска приложения
void main(){
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuotePage(),
    ),
  );
}