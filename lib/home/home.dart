import 'dart:ffi';

import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _counter = 0;
  List quote = [
    'All our dreams can come true, if we have the courage to pursue them.',
    'The secret of getting ahead is getting started.',
    'I’ve missed more than 9,000 shots in my career. I’ve lost almost 300 games. 26 times I’ve been trusted to take the game winning shot and missed.',
    'I’ve failed over and over and over again in my life and that is why I succeed.',
    'Don’t limit yourself. Many people limit themselves to what they think they can do. You can go as far as your mind lets you. What you believe, remember, you can achieve.',
    'The best time to plant a tree was 20 years ago. The second best time is now.',
    'Only the paranoid survive.',
    'It’s hard to beat a person who never gives up.',
    'I wake up every morning and think to myself, ‘how far can I push this company in the next 24 hours.',
    'If people are doubting how far you can go, go so far that you can’t hear them anymore.',
    'We need to accept that we won’t always make the right decisions, that we’ll screw up royally sometimes – understanding that failure is not the opposite of success, it’s part of success.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 350,
                  height: 200,
                  margin: EdgeInsets.all(30.0),
                  child: Center(
                      child: Text(
                    quote[_counter % quote.length],
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontStyle: FontStyle.italic,
                        fontSize: 16.5),
                  ))),
              Divider(
                thickness: 1.5,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: FlatButton.icon(
                    onPressed: _showQuote,
                    color: Colors.greenAccent,
                    icon: Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Inspire Me!',
                      style: TextStyle(
                        fontSize: 18.8,
                        color: Colors.white,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showQuote() {
    //Incrementing counter by 1
    _counter++;
    setState(() {});
  }
}
