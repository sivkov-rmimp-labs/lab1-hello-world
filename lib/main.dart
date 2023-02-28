import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Лаб 1 Сивков',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: '[РМиМП-1] Лаб 1 Сивков'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String textFieldValue = "";
  bool textShown = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: const InputDecoration(labelText: 'Текст', hintText: 'Введите текст сюда'),
                onChanged: (value) {
                  textFieldValue = value;
                },
              ),
              MaterialButton(
                color: Theme.of(context).colorScheme.primary,
                onPressed: () {
                  setState(() {
                    textShown = !textShown;
                  });
                },
                child: Text(textShown ? 'Скрыть' : 'Отобразить'),
              ),
              Text(textShown ? textFieldValue : ''),
            ],
          ),
        ),
      ),
    );
  }
}
