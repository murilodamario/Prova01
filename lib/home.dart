import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController firstNumber = TextEditingController();
  TextEditingController secondNumber = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Calculadora'),
          backgroundColor: const Color(0xFF263238),
        ),
        body: Center(
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(100, 100, 100, 0.5),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: SizedBox(
                    width: 300,
                    height: 400,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                        child: TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelStyle: TextStyle(fontSize: 14),
                            labelText: 'Digite o primeiro número',
                          ),
                          controller: firstNumber,
                          textAlign: TextAlign.center,
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          child: TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelStyle: TextStyle(fontSize: 14),
                            labelText: 'Digite o segundo número',
                          ),
                          controller: secondNumber,
                          textAlign: TextAlign.center,
                        )),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          child:(
                            Text("Selecione a operação",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
                          ))
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20), 
                          child: Row(                          
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            OutlinedButton(
                              child: const Text('+', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, backgroundColor: Colors.blueGrey)),
                              onPressed: () {
                                setState(() {
                                  result = double.parse(firstNumber.text) +
                                      double.parse(secondNumber.text);
                                });
                              },
                            ),
                            OutlinedButton(
                              child: const Text('-', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, backgroundColor: Colors.blueGrey)),
                              onPressed: () {
                                setState(() {
                                  result = double.parse(firstNumber.text) -
                                      double.parse(secondNumber.text);
                                });
                              },
                            ),
                            OutlinedButton(
                              child: const Text('×', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, backgroundColor: Colors.blueGrey)),
                              onPressed: () {
                                setState(() {
                                  result = double.parse(firstNumber.text) *
                                      double.parse(secondNumber.text);
                                });
                              },
                            ),
                            OutlinedButton(
                              child: const Text('÷', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white, backgroundColor: Colors.blueGrey)),
                              onPressed: () {
                                setState(() {
                                  result = double.parse(firstNumber.text) /
                                      double.parse(secondNumber.text);
                                });
                              },
                            )
                          ]
                        )),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          child:(
                            Text("O resultado é",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)))
                        ),
                          Text(result.toString(),
                          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
                      ]),
            )
          )
        )
      )
    );
  }
}