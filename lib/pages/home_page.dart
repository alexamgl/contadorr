import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text('Alexandra Gudiño, DS01SV-22'),
          const Text('Número de clics'),
          Text('$contador'),
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(children: [
        FloatingActionButton(
            child: const Icon(Icons.add), onPressed: () => _botonMas()),
        FloatingActionButton(
            child: const Icon(Icons.exposure_zero),
            onPressed: () => _botonCero()),
        FloatingActionButton(
            child: const Icon(Icons.remove), onPressed: () => _botonMenos())
      ]),
    );
  }

  _botonMas() {
    setState(() => contador++);
  }

  _botonCero() {
    setState(() => contador = 0);
  }

  _botonMenos() {
    setState(() {
      if (contador != 0) {
        contador--;
      }
    });
  }
}
