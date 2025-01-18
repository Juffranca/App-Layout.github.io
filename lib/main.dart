import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Personalizado',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Layout com Cores e Colunas'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(16.0),
            border: Border.all(color: Colors.blueAccent, width: 2),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Primeira linha',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const Text(
                'Segunda linha',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.teal,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.star, size: 40, color: Colors.amber),
                  Icon(Icons.favorite, size: 40, color: Colors.red),
                  Icon(Icons.thumb_up, size: 40, color: Colors.blue),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  // Exemplo de ação do botão
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Botão pressionado!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
                child: const Text(
                  'Clique aqui',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Exemplo de ação do botão flutuante
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Botão flutuante pressionado!')),
          );
        },
        tooltip: 'Increment',
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
    );
  }
}


