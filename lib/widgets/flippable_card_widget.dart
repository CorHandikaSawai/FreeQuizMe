import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class FlippableCardWidget extends StatefulWidget {
  FlippableCardWidget({
    Key? key,
    required this.question,
    required this.answer,
    required this.flipCardKey,
  }) : super(key: key);

  final String question;
  final String answer;
  final GlobalKey<FlipCardState> flipCardKey;

  @override
  State<FlippableCardWidget> createState() => _FlippableCardWidgetState();
}

class _FlippableCardWidgetState extends State<FlippableCardWidget> {
  @override
  Widget build(BuildContext context) {
    return FlipCard(
      key: widget.flipCardKey,
      fill: Fill.fillBack,
      front: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Card(
          elevation: 5,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Text(
                  widget.question,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
        ),
      ),
      back: Card(
        elevation: 5,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Text(
                widget.answer,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
