import 'package:flutter/material.dart';
import 'package:teste_flutter/views/senha_esquecida.dart';
import 'menu_view.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
 Login({Key? key}) : super(key: key);
  static const routeName = '/login';

  // ignore: unused_field
  String _password = '';
  // ignore: unused_field
  String _usuario = '';

  static const String _title = 'Bem Vindo';
  final _formKey = GlobalKey<FormState>();

@override
  Widget build (BuildContext context){
  Size size = MediaQuery.of(context).size;
  return MaterialApp(
    title: _title,
    home: Scaffold(
  appBar: AppBar(title: const Text(_title),
  backgroundColor: Colors.lightBlue,),
  body: 
  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(margin: const EdgeInsets.only(left: 20, top: 28),
      child: const Text(
                    'Login',
                    style: TextStyle(fontWeight: FontWeight.w500,
                    fontSize: 30),
                  ),
                ),
        Form(
    key: _formKey,
    child: Column(
      children: [ 
        const SizedBox(
          height: 30,
        ),
        Container(
        margin: const EdgeInsets.only(left: 10, right: 10, top: 25),
        child:
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.person),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(
                          ),),
            labelText: 'Usuário',
          ),
          onChanged: (value){
            _usuario = value;
          },
          validator: (value) {
            if (value != null && value.isEmpty) {
              return 'Usuário é necessário, por favor digite um usuário válido.';
            }
            if (value != 'Teste') {return 'Usuário inválido, tente novamente.';}
            }
            ),),
        Container(
        margin: const EdgeInsets.only(left: 10, right: 10, top: 25),
        child:
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.key),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(
                          ),),
            labelText: 'Senha',
          ),
          onChanged: (value){
            _password = value;
          },
          validator: (value) {
            if (value != null && value.isEmpty) {
              return 'Senha é necessária, por favor digite uma senha válida.';
            }
            if (value != '1234') {return 'Senha inválida, tente novamente.';}
            }
            ),),
      Container(
        width: size.width / 1,
        height: 50,
        margin: const EdgeInsets.only(left: 10, right: 10, top: 25),
        child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(25.0),)),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return Colors.black.withOpacity(0.04);
        }
        if (states.contains(MaterialState.focused) ||
            states.contains(MaterialState.pressed)) {
          return Colors.black.withOpacity(0.12);
        }
        return null;
      },
    ),
  ),
          onPressed: () => {if (_formKey.currentState!.validate()) {Navigator.of(context).pushReplacementNamed(
                                    Menu.routeName,
                                  )}},
          child: const Text('Logar',
          style: TextStyle(color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w700),),
              ),
            ),
            Align(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.only(top:10),
              child: TextButton(
                child: const Text('Esqueci minha senha'),
                onPressed: () {Navigator.of(context).pushReplacementNamed(
                                    Senha.routeName,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

