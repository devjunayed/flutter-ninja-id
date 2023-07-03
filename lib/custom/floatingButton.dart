import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  final String sym;
  final String side;
  final method;

  const FloatingButton(
      {super.key, required this.sym, required this.side, required this.method});

  @override
  Widget build(BuildContext context) {
    double left = side == 'right' ? 300.0 : 0.0;
    double right = side == 'left' ? 250.0 : 0.0;

    return Positioned(
      bottom: 16.0,
      left: left,
      right: right,
      child: FloatingActionButton(
        backgroundColor: Colors.grey[800],
        onPressed: method,
        child: Center(
          child: Text(
            sym,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.grey[600],
            ),
          ),
        ),
      ),
    );
  }
}
