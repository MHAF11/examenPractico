import 'package:flutter/material.dart';
import 'models/driver.dart';
import 'completion.dart';

class SummaryScreen extends StatelessWidget {
  final Driver driver;
  final String fromLocation;
  final String toLocation;

  const SummaryScreen({
    super.key,
    required this.driver,
    required this.fromLocation,
    required this.toLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.45, // Azul hasta casi la mitad
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            decoration: const BoxDecoration(
              color: Color(0xFF00ACC1), // Azul ajustado
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "16:30  $fromLocation",
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 10),
                Text(
                  "Pick up at $fromLocation",
                  style: const TextStyle(color: Colors.white70, fontSize: 18),
                ),
                const SizedBox(height: 20),
                Text(
                  "17:20  $toLocation",
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 10),
                Text(
                  "Drop off at $toLocation",
                  style: const TextStyle(color: Colors.white70, fontSize: 18),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage("images/conductor.jpg"),
            ),
            title: const Text("Mario",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            subtitle: Row(
              children: const [
                Icon(Icons.star, color: Colors.amber, size: 18),
                SizedBox(width: 5),
                Text("4.99 (347 reviews)",
                    style: TextStyle(color: Colors.grey, fontSize: 16)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 15),
            child: Row(
              children: [
                Icon(Icons.directions_car, color: Colors.grey, size: 18),
                SizedBox(width: 10),
                Text("Small car", style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[800],
                padding: const EdgeInsets.symmetric(
                    vertical: 14, horizontal: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CompletionScreen()),
                  (Route<dynamic> route) => false,
                );
              },
              child: const Text("Ordenar ahora",
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Text(
              "By clicking on 'Order Now' button I agree with Terms and Policies of using Carpoolin.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}