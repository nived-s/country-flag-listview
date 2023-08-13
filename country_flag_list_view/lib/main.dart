import 'package:flutter/material.dart';

void main() {
  runApp(const CountryListApp());
}

class CountryListApp extends StatelessWidget {
  const CountryListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country List App',
      home: CountryListScreen(),
    );
  }
}

class CountryListScreen extends StatelessWidget {
  // List of countries with their names and saved file names inside assets/
  final List<Country> countries = [
    Country(name: 'Afghanistan', flag: 'Afghanistan'),
    Country(name: 'Argentina', flag: 'Argentina'),
    Country(name: 'Brazil', flag: 'Brazil'),
    Country(name: 'Chile', flag: 'Chile'),
    Country(name: 'France', flag: 'France'),
    Country(name: 'Germany', flag: 'Germany'),
    Country(name: 'India', flag: 'India'),
    Country(name: 'Jordan', flag: 'Jordan'),
    Country(name: 'Malaysia', flag: 'Malaysia'),
    Country(name: 'Mexico', flag: 'Mexico'),
    Country(name: 'Netherlands', flag: 'Netherlands'),
    Country(name: 'Paraguay', flag: 'Paraguay'),
    Country(name: 'Russia', flag: 'Russia'),
    Country(name: 'Singapore', flag: 'Singapore'),
    Country(name: 'Spain', flag: 'Spain'),
    // Add more countries here
  ];

  CountryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Country List'),
      ),
      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          return Padding(
            // give space between each list tiles
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: ListTile(
              // Display the country flag
              leading: Image.asset('assets/${countries[index].flag}.png'),
              // Display the country name
              title: Text(countries[index].name),
            ),
          );
        },
      ),
    );
  }
}

// Country class is used to represent individual countries
// store and manage information about each country
class Country {
  final String name;
  final String flag;

  // Constructor to create a Country object
  Country({required this.name, required this.flag});
}
