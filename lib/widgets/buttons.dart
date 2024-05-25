import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  final String btnText;
  final bool isFunBtn;
  final bool isEqualBtn;
  final VoidCallback onTap;
  const Buttons(
      {super.key,
      required this.btnText,
      required this.isFunBtn,
      this.isEqualBtn = false, required this.onTap});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
            color: widget.isFunBtn ? Colors.cyan : Colors.orange,
            borderRadius: BorderRadius.circular(20),
          ),
          width: widget.isEqualBtn ? 175 : 70,
          height: 70,
          child: Center(
            child: Text(
              widget.btnText,
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
      ),
    );
  }
}
