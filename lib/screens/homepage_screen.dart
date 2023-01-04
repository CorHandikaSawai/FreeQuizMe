import 'package:flutter/material.dart';
import 'package:free_quizme/screens/create_card_screen.dart';
import 'package:free_quizme/services/card_service.dart';
import 'package:free_quizme/widgets/collection_card.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _collectionName;
  final _formKey = GlobalKey<FormState>();
  final _collectionNameTextFormController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cardService = Provider.of<CardService>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('QCards'),
        actions: [
          IconButton(
            onPressed: () => print('Profile setting'),
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(8),
        child: FutureBuilder(
          future: cardService.collections,
          builder:
              (context, AsyncSnapshot<List<Map<String, String>>> snapshot) {
            List<Widget> subjects = [];
            if (snapshot.hasData) {
              for (var element in snapshot.data!) {
                subjects.add(
                  CollectionCard(
                    subjectName: element['subjectName'].toString(),
                    count: element['count'].toString(),
                  ),
                );
              }
            }
            if (snapshot.hasError) {
              print('Error');
            }
            print(snapshot.connectionState);
            return ListView(
              children: subjects,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('New Collection'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: _formKey,
                    child: TextFormField(
                      controller: _collectionNameTextFormController,
                      decoration: InputDecoration(
                        label: Text('Name:'),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Cannot be empty!';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          _collectionName =
                              _collectionNameTextFormController.text;
                        });
                        //TODO: Navigate to create cards screen
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateCardsScreen(
                                collectionName: _collectionName),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Error'),
                            backgroundColor: Colors.redAccent,
                          ),
                        );
                      }
                    },
                    child: Text('Create'),
                  ),
                ),
              ],
            ),
          ),
        ),
        child: Icon(Icons.library_add_rounded),
      ),
    );
  }
}
