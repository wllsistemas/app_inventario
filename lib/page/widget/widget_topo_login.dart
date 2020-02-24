import 'package:flutter/material.dart';

class Topo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 7,
            spreadRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
                width: 3,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Icon(
                Icons.move_to_inbox,
                size: 55,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Inventário de Estoque',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '5º Semestre S.I.',
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
