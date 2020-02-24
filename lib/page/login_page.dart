import 'package:app_inventario/page/widget/widget_dialog.dart';
import 'package:app_inventario/page/widget/widget_form_login.dart';
import 'package:app_inventario/page/widget/widget_rodape_login.dart';
import 'package:app_inventario/page/widget/widget_topo_login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _keyForm = GlobalKey<FormState>();
  var _ctrUsuario = TextEditingController();
  var _ctrSenha = TextEditingController();
  var _ctrIP = TextEditingController();
  var _ctrPorta = TextEditingController();

  @override
  void initState() {
    lerIp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Topo(),
            Formulario(
              ctrUsuario: _ctrUsuario,
              ctrSenha: _ctrSenha,
              keyForm: _keyForm,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ExibeAlert(context, _ctrIP, _ctrPorta);
        },
        tooltip: 'Configuração de Acesso',
        child: Icon(Icons.settings),
        elevation: 3.0,
      ),
      bottomNavigationBar: Rodape(),
    );
  }

  lerIp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ctrIP.text = prefs.getString('IP');
      _ctrPorta.text = prefs.getString('PORTA');
    });
  }
}
