import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tarjetas')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Card', style: Theme.of(context).textTheme.titleMedium),
          const Card(
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text('Tarjeta básica'),
              subtitle: Text('Un ejemplo de Card con ListTile.'),
            ),
          ),
          const SizedBox(height: 12),
          Text('Card elevada', style: Theme.of(context).textTheme.titleMedium),
          const Card(
            elevation: 8,
            child: ListTile(
              leading: Icon(Icons.star),
              title: Text('Tarjeta con elevación'),
              subtitle: Text('La propiedad elevation define la sombra.'),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Card delineada',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Card.outlined(
            child: ListTile(
              leading: Icon(
                Icons.credit_card,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: const Text('Tarjeta delineada'),
              subtitle: const Text('Card.outlined muestra un borde sutil.'),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Card interactiva',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Seleccionaste la tarjeta')),
              ),
              child: const ListTile(
                leading: Icon(Icons.touch_app),
                title: Text('Toca esta tarjeta'),
                subtitle: Text('Card puede contener contenido interactivo.'),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
