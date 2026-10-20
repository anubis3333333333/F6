// виджет  для кнопочки 

import "package:flutter/material.dart";

class QuoteButton extends StatelessWidget{
    final VoidCallback onPressed ; // voidcallback тож самое что и void "func" но позволяет передавать данные другим виджетам

    const QuoteButton({super.key, required this.onPressed});

    @override
    Widget build(BuildContext context) {
        return ElevatedButton( // перемещение кнопки
            onPressed: onPressed,
            child: const Text("Next quote"),
        );
    }
} 