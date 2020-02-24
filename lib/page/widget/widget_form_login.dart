import 'package:flutter/material.dart';

class Formulario extends StatelessWidget {
  GlobalKey<FormState> keyForm = GlobalKey<FormState>();
  var ctrUsuario = TextEditingController();
  var ctrSenha = TextEditingController();

  Formulario(
      {@required this.ctrUsuario,
      @required this.ctrSenha,
      @required this.keyForm});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: 40,
              top: 30,
              right: 40,
              bottom: 30,
            ),
            child: TextFormField(
              controller: ctrUsuario,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Usuário',
                icon: Icon(Icons.perm_identity),
                labelStyle: TextStyle(
                  fontSize: 25,
                ),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Informe seu Usuário';
                }
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 40,
              top: 10,
              right: 40,
              bottom: 30,
            ),
            child: TextFormField(
              controller: ctrUsuario,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                icon: Icon(Icons.vpn_key),
                labelStyle: TextStyle(
                  fontSize: 25,
                ),
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Informe sua Senha';
                }
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 40,
              top: 30,
              right: 40,
              bottom: 30,
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(
                  50,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: FlatButton(
                onPressed: () {
                  if (keyForm.currentState.validate()) {}
                },
                child: Text(
                  'Entrar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
