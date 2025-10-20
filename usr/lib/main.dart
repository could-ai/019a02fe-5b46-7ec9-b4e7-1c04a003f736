import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon CV',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Roboto',
      ),
      home: const CVPage(),
    );
  }
}

class CVPage extends StatelessWidget {
  const CVPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200],
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 20),
              _buildSectionTitle('Profil'),
              const Text(
                'Développeur Flutter passionné avec 5 ans d\'expérience dans la création d\'applications mobiles multiplateformes performantes et esthétiques. Compétent en Dart, Firebase et en gestion d\'état avec Provider et BLoC.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              _buildSectionTitle('Expérience Professionnelle'),
              _buildExperienceItem(
                'Développeur Flutter Senior',
                'Tech Solutions Inc.',
                '2020 - Présent',
                'Développement et maintenance d\'applications mobiles pour divers clients. Collaboration avec les équipes de design et de backend pour fournir des produits de haute qualité.',
              ),
              _buildExperienceItem(
                'Développeur Mobile Junior',
                'Mobile Apps Co.',
                '2018 - 2020',
                'Participation au développement de plusieurs applications Android et iOS natives avant de passer à Flutter.',
              ),
              const SizedBox(height: 20),
              _buildSectionTitle('Éducation'),
              _buildEducationItem(
                'Master en Informatique',
                'Université de Paris',
                '2016 - 2018',
              ),
              _buildEducationItem(
                'Licence en Informatique',
                'Université de Lyon',
                '2013 - 2016',
              ),
              const SizedBox(height: 20),
              _buildSectionTitle('Compétences'),
              _buildSkills(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Jean Dupont',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            'Développeur Flutter',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white70,
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.email, color: Colors.white, size: 16),
              SizedBox(width: 10),
              Text('jean.dupont@email.com', style: TextStyle(color: Colors.white)),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.phone, color: Colors.white, size: 16),
              SizedBox(width: 10),
              Text('+33 6 12 34 56 78', style: TextStyle(color: Colors.white)),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.white, size: 16),
              SizedBox(width: 10),
              Text('Paris, France', style: TextStyle(color: Colors.white)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }

  Widget _buildExperienceItem(String title, String company, String period, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            '$company | $period',
            style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Colors.grey),
          ),
          const SizedBox(height: 5),
          Text(
            description,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildEducationItem(String degree, String university, String period) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            degree,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            '$university | $period',
            style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildSkills() {
    return const Wrap(
      spacing: 10,
      runSpacing: 10,
      children: [
        Chip(label: Text('Flutter')),
        Chip(label: Text('Dart')),
        Chip(label: Text('Firebase')),
        Chip(label: Text('REST APIs')),
        Chip(label: Text('Git')),
        Chip(label: Text('Provider')),
        Chip(label: Text('BLoC')),
        Chip(label: Text('UI/UX Design')),
      ],
    );
  }
}
