import 'package:flutter/material.dart';
Widget getValue(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(icon, size: 32),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 16)),
        Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }

