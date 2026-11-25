import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Botones')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            'Botones de Material',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () => _showMessage(context, 'ElevatedButton'),
            icon: const Icon(Icons.send),
            label: const Text('ElevatedButton'),
          ),
          const SizedBox(height: 12),
          FilledButton(
            onPressed: () => _showMessage(context, 'FilledButton'),
            child: const Text('FilledButton'),
          ),
          const SizedBox(height: 12),
          FilledButton.tonal(
            onPressed: () => _showMessage(context, 'FilledButton.tonal'),
            child: const Text('FilledButton.tonal'),
          ),
          const SizedBox(height: 12),
          OutlinedButton(
            onPressed: () => _showMessage(context, 'OutlinedButton'),
            child: const Text('OutlinedButton'),
          ),
          const SizedBox(height: 12),
          TextButton(
            onPressed: () => _showMessage(context, 'TextButton'),
            child: const Text('TextButton'),
          ),
          const SizedBox(height: 12),
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton.filled(
              tooltip: 'IconButton',
              onPressed: () => _showMessage(context, 'IconButton'),
              icon: const Icon(Icons.favorite),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'FloatingActionButton',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          const Text('El botón flotante aparece en la esquina inferior.'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'FloatingActionButton',
        onPressed: () => _showMessage(context, 'FloatingActionButton'),
        child: const Icon(Icons.add),
      ),
    );
  }
}

void _showMessage(BuildContext context, String buttonName) {
  ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text('Presionaste $buttonName')));
}
