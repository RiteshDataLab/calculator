import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ResultContainer extends StatelessWidget {
  final String inputText;
  final String resultText;
  const ResultContainer(
      {super.key, required this.inputText, required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Container(
        height: 150,
        width: 500,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 153, 159, 161),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(width: 3)),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 18),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      inputText,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                          shadows: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(-2, -2),
                              blurRadius: 10,
                            ),
                          ]),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  resultText,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 31, 29, 29),
                      fontSize: 50,
                      fontWeight: FontWeight.w400,
                      shadows: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(-2, -2),
                          blurRadius: 10,
                        ),
                      ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
