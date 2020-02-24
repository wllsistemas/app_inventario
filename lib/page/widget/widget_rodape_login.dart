import 'package:flutter/material.dart';

class Rodape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8,
      color: Theme.of(context).primaryColor,
      child: Container(
        height: 45,
      ),
    );
  }
}
