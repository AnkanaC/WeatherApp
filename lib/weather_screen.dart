import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:myapp/hourly_forcast_item.dart';
import 'package:myapp/additional_info_item.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print("Refresh button pressed"); // Debug line
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          // Updated temperature value
                          Text(
                            "72°F", // More realistic placeholder temperature
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16),
                          Icon(Icons.cloud, size: 64),
                          Text(
                            "Rain",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Weather Forecast",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Fix: Removed const and updated SingleChildScrollView
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForecastItem("10:00", Icons.cloud, "68°F"),
                  HourlyForecastItem("12:00", Icons.wb_sunny, "75°F"),
                  HourlyForecastItem("14:00", Icons.cloud_queue, "73°F"),
                  HourlyForecastItem("16:00", Icons.wb_cloudy, "70°F"),
                  HourlyForecastItem("18:00", Icons.nights_stay, "65°F"),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Additional Information cards placeholder
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Additional Information",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Fix: Added children to Row for additional info
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                getValue(Icons.water_drop, "Humidity", "60%"),
                getValue(Icons.air, "Wind Speed", "15 km/h"),
                getValue(Icons.thermostat, "Pressure", "1013 hPa"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
