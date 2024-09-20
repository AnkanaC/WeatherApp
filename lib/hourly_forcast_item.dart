import 'package:flutter/material.dart';

Widget HourlyForecastItem(String time, IconData icon, String temp) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Card(
        elevation: 6,
        child: Column(
          children: [
            Text(
              time,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Icon(icon, size: 32),
            const SizedBox(height: 8),
            Text(temp),
          ],
        ),
      ),
    );
  }