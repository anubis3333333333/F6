import "package:flutter/material.dart";
import "package:f6/quote_page.dart";
// прост виджет для запуска приложения
void main(){
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuotePage(),
    ),
  );
}