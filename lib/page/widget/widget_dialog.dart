import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';

ExibeAlert(BuildContext context, TextEditingController ctrIP,
    TextEditingController ctrPorta) {
  var maskFormatter = MaskTextInputFormatter(
      mask: '###.###.###.###', filter: {"#": RegExp(r'[0-9]')});
  Alert(
      context: context,
      title: "Dados de Acesso",
      style: AlertStyle(
        animationType: AnimationType.fromTop,
        animationDuration: Duration(milliseconds: 400),
        titleStyle: TextStyle(
          color: Colors.blueGrey,
        ),
      ),
      content: Column(
        children: <Widget>[
          TextField(
            controller: ctrIP,
            inputFormatters: [maskFormatter],
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              icon: Icon(Icons.cloud_done),
              labelText: 'IP do Servidor',
            ),
          ),
          TextField(
            controller: ctrPorta,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              icon: Icon(Icons.compare_arrows),
              labelText: 'Porta',
            ),
          ),
        ],
      ),
      buttons: [
        DialogButton(
          onPressed: () {
            Navigator.pop(context);
            gravarIp(ctrIP.text, ctrPorta.text);
          },
          child: Text(
            "Gravar",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        )
      ]).show();
}

gravarIp(String ip, String porta) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('IP', ip);
  prefs.setString('PORTA', porta);
}
