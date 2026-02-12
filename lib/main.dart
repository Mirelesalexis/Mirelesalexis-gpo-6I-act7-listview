import 'package:flutter/material.dart';

void main() => runApp(const AppDominos());

class AppDominos extends StatelessWidget {
  const AppDominos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pizzas de Dominos',
      home: Pizzas(),
    );
  }
} // fin clase AppDominos

class Pizzas extends StatelessWidget {
  const Pizzas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Domino's",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[300],
        leading: const Icon(
          Icons.local_pizza,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.build, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.emergency, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      // --- CUERPO CON LOS 5 ELEMENTOS SOLICITADOS ---
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildCustomTile(
            titulo: 'Pepperoni Especial',
            subtitulo: 'La clásica con doble queso',
            icono: Icons.local_pizza,
            colorFondo: Colors.red.shade50,
            colorIcono: Colors.red,
          ),
          _buildCustomTile(
            titulo: 'Hawaiana Feast',
            subtitulo: 'Piña y jamón premium',
            icono: Icons.wb_sunny,
            colorFondo: Colors.orange.shade50,
            colorIcono: Colors.orange,
          ),
          _buildCustomTile(
            titulo: 'Mexicana Hot',
            subtitulo: 'Jalapeño, chorizo y cebolla',
            icono: Icons.whatshot, // Corregido: minúscula
            colorFondo: Colors.green.shade50,
            colorIcono: Colors.green,
          ),
          _buildCustomTile(
            titulo: '4 Quesos',
            subtitulo: 'Mezcla cremosa irresistible',
            icono: Icons.layers,
            colorFondo: Colors.amber.shade50,
            colorIcono: Colors.amber,
          ),
          _buildCustomTile(
            titulo: 'Veggie Pizza',
            subtitulo: 'Pimientos, champiñones y aceituna',
            icono: Icons.eco,
            colorFondo: Colors.teal.shade50,
            colorIcono: Colors.teal,
          ),
        ],
      ),
    );
  } // Fin del método build

  // --- FUNCIÓN PARA CREAR LOS LISTTILE ---
  Widget _buildCustomTile({
    required String titulo,
    required String subtitulo,
    required IconData icono,
    required Color colorFondo,
    required Color colorIcono,
  }) {
    return Card(
      elevation: 0.5,
      margin: const EdgeInsets.only(bottom: 12.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        tileColor: colorFondo,
        leading: CircleAvatar(
          backgroundColor: colorIcono.withOpacity(0.2),
          child: Icon(icono, color: colorIcono),
        ),
        title: Text(
          titulo,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitulo),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        onTap: () {
          // Acción al presionar
        },
      ),
    );
  }
} // fin clase Pizzas