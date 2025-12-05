import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Home Screen',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Akashz First Project'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 84, 77, 222),
        title: Text(widget.title),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: const Color.fromARGB(255, 253, 7, 7),
          labelColor: const Color.fromARGB(255, 61, 248, 4),
          unselectedLabelColor: const Color.fromARGB(179, 254, 251, 251),
          indicatorWeight: 4,
          tabs: const [
            Tab(icon: Icon(Icons.home), text: "Home"),
            Tab(icon: Icon(Icons.person), text: "Profile"),
            Tab(icon: Icon(Icons.settings), text: "Settings"),
          ],
        ),
      ),

      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
            child: Text(
              "Welcome to My Home Page",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Center(
            child: Text(
              "Akash'z Profile Section",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Center(
            child: Text(
              "Settings & Preferences",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
