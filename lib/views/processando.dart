import 'package:flutter/material.dart';


class Processando extends StatefulWidget {
  const Processando({Key? key}) : super(key: key);
  static const routeName = '/processando';
@override
 State<Processando> createState() => _ProcessandoState();
}


class _ProcessandoState extends State<Processando> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Column(children: [Container(
        margin: const EdgeInsets.only(top: 10),
        child: SizedBox(
          width: 160,
          height: 160,
          child: Image.asset("lib/assets/R.gif"),
        ),
      ),
        const Text('Processando',
        style: TextStyle(color: Color.fromARGB(255, 0, 158, 255),
        decorationColor: Color.fromARGB(255, 0, 158, 255),
        fontSize: 44,),),]))
    ;
  }
}