import 'package:flutter/material.dart';

class GenericButton extends StatelessWidget {
  final Color color;
  final String data;
  final Function function;

  GenericButton({this.color, this.data, @required this.function});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: function,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            data,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
