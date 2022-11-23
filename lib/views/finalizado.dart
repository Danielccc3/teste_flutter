import 'package:flutter/material.dart';


class Finalizado extends StatefulWidget {
  const Finalizado({Key? key}) : super(key: key);
  static const routeName = '/finalizado';
@override
 State<Finalizado> createState() => _FinalizadoState();
}


class _FinalizadoState extends State<Finalizado> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
      child: Column(children: [Container(
        margin: const EdgeInsets.only(top:10),
        child: SizedBox(
          width: 160,
          height: 160,
          child: Image.asset("lib/assets/Finalizado.png"),
        ),
      ),
        const Text('Finalizado',
        style: TextStyle(color: Color.fromARGB(255,41, 150, 7),
        decorationColor: Color.fromARGB(255,41, 150, 7),
        fontSize: 44,),),]))
    ;
  }
}