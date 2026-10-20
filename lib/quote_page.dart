import "package:flutter/material.dart";
import "package:f6/quote_card.dart";
import "package:f6/quote_button.dart";
import "package:f6/quote_data.dart";

// главный виджет проекта (по сути страница соединяющая пролшые модули)



class QuotePage extends StatefulWidget {
    const QuotePage({super.key});

    @override 
    State<QuotePage> createState() => _QuotePageState();

}

class _QuotePageState extends State<QuotePage>{
    int index = 0;

    void nextQuote(){
        setState(() {
            index = QuoteData.randomIndex();
        });
    }

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.red,Colors.purple],
                    ),
                ),
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Image.asset(
                                "assets/images/image${index % 3 + 1}.jpg", // для расчета картинки
                                height: 500,
                                width: 300,
                            ),
                            const SizedBox(height: 20),
                            const Text(
                                "Daily Quote",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,

                                ),
                            ),
                            const SizedBox(height: 20),
                            QuoteCard(quote: QuoteData.quotes[index]),
                            const SizedBox(height: 20),
                            QuoteButton(onPressed: nextQuote),

                        ],
                             
                    ),
                ),
            ),
        );
    }
}