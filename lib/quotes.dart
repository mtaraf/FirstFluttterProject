import 'package:flutter/material.dart';
import 'quote.dart';
import 'quoteCard.dart';

void main(){
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}


class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text:"Hello, world", author: "Everyone"),
    Quote(text:"Loren Ipsum", author: "The Greeks"),
    Quote(text:"Obi-wan Kenobi", author: "Anakin"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],

      appBar: AppBar(
        title: Text("Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),

      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }

  void deleteQuote(quote){
    quotes.remove(quote);
  }
}
