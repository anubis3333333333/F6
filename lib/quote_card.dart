import "package:flutter/material.dart";

// виджет для отображения цитаты 

class QuoteCard extends StatelessWidget{
    final String quote;

    const QuoteCard({super.key,required this.quote});

    @override
    Widget build(BuildContext context){
        return Text(
            quote,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontSize: 24,
                color: Colors.indigo[900],
            ),
        );
    }
}