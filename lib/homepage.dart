import 'package:calculator/widgets/buttons.dart';
import 'package:calculator/widgets/result_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:math_expressions/math_expressions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String input = "";
  String result = "";
  void inputHandle(String userInput) {
// clear alll input data

    if (userInput == "C") {
      setState(() {
        input = input.substring(0, input.length - 1);
      });
    } else if (userInput == "AC") {
      setState(() {
        input = "";
        result = "";
      });
    } else if (userInput == "=") {
      Parser p = Parser();
      Expression exp = p.parse(input);
      ContextModel contextModel = ContextModel();
      setState(() {
        result = exp.evaluate(EvaluationType.REAL, contextModel).toString();
      });
    } else {
      setState(() {
        input = input + userInput;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ResultContainer(
            inputText: input,
            resultText: result,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Buttons(
                btnText: "AC",
                isFunBtn: false,
                onTap: () {
                  inputHandle("AC");
                },
              ),
              Buttons(
                btnText: "C",
                isFunBtn: false,
                onTap: () {
                  inputHandle("C");
                },
              ),
              Buttons(
                btnText: "%",
                isFunBtn: false,
                onTap: () {
                  inputHandle("%");
                },
              ),
              Buttons(
                btnText: "/",
                isFunBtn: true,
                onTap: () {
                  inputHandle("/");
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Buttons(
                isFunBtn: false,
                btnText: "7",
                onTap: () {
                  inputHandle("7");
                },
              ),
              Buttons(
                btnText: "8",
                isFunBtn: false,
                onTap: () {
                  inputHandle("8");
                },
              ),
              Buttons(
                btnText: "9",
                isFunBtn: false,
                onTap: () {
                  inputHandle("9");
                },
              ),
              Buttons(
                btnText: "X",
                isFunBtn: true,
                onTap: () {
                  inputHandle("*");
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Buttons(
                btnText: "4",
                isFunBtn: false,
                onTap: () {
                  inputHandle("4");
                },
              ),
              Buttons(
                btnText: "5",
                isFunBtn: false,
                onTap: () {
                  inputHandle("5");
                },
              ),
              Buttons(
                btnText: "6",
                isFunBtn: false,
                onTap: () {
                  inputHandle("6");
                },
              ),
              Buttons(
                btnText: "-",
                isFunBtn: true,
                onTap: () {
                  inputHandle("-");
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Buttons(
                btnText: "1",
                isFunBtn: false,
                onTap: () {
                  inputHandle("1");
                },
              ),
              Buttons(
                btnText: "2",
                isFunBtn: false,
                onTap: () {
                  inputHandle("2");
                },
              ),
              Buttons(
                btnText: "3",
                isFunBtn: false,
                onTap: () {
                  inputHandle("3");
                },
              ),
              Buttons(
                btnText: "+",
                isFunBtn: true,
                onTap: () {
                  inputHandle("+");
                },
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Buttons(
                btnText: "0",
                isFunBtn: false,
                onTap: () {
                  inputHandle("0");
                },
              ),
              Buttons(
                btnText: ",",
                isFunBtn: false,
                onTap: () {
                  inputHandle(",");
                },
              ),
              Buttons(
                btnText: "=",
                isFunBtn: true,
                isEqualBtn: true,
                onTap: () {
                  inputHandle("=");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
