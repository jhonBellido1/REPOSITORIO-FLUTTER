import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Acerca de')),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          CircleAvatar(
            radius: 44,
            backgroundColor: Theme.of(context).colorScheme.primaryContainer,
            child: Icon(
              Icons.person,
              size: 48,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Información personal',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 24),
          const _PersonalInfoTile(
            icon: Icons.badge_outlined,
            label: 'Nombre completo',
            value: 'Escribe tu nombre',
          ),
          const _PersonalInfoTile(
            icon: Icons.email_outlined,
            label: 'Correo electrónico',
            value: 'Escribe tu correo',
          ),
          const _PersonalInfoTile(
            icon: Icons.school_outlined,
            label: 'Programa académico',
            value: 'Escribe tu programa',
          ),
          const _PersonalInfoTile(
            icon: Icons.code,
            label: 'Actividad',
            value: 'Navegación con GoRouter',
          ),
        ],
      ),
    );
  }
}

class _PersonalInfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _PersonalInfoTile({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
