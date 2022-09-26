import 'package:flutter/material.dart';

class NeuButton extends StatefulWidget {
  final onTap;

  bool isButtonPressed;

  NeuButton({super.key, this.onTap, required this.isButtonPressed});

  @override
  State<NeuButton> createState() => _NeuButtonState();
}

class _NeuButtonState extends State<NeuButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(6, 6),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-6, -6),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                ]),
            child: Icon(
              Icons.favorite,
              size: 120,
              color: widget.isButtonPressed ? Colors.green : Colors.red[400],
            ),
          ),
        ),
      ),
    );
  }
}
