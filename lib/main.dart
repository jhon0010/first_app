import 'package:flutter/material.dart'; // no necesita poner el package antes
import 'package:english_words/english_words.dart';

void main() => runApp(RandomWordsListWidget());

/*
 * Custom widget just can extend of StatelessWidget | StatefulWidget 
 */
class RandomWordsListWidget extends StatelessWidget {
  /*
   * Este metodo se llama cada vez que debe ser renderizado
   */
  @override
  Widget build(BuildContext context) {
    //final wordPair = new WordPair.random();// se puedes crear constructores de tipos y nombres diferentes (Dart).

    /**
     * All custom params are passed by constructor parameter
     */
    return MaterialApp(
      title: 'Welcome to flutter',
      home: RandomWords(),
    );
  }
}

/*
 * Para persistir el estado.
 * 
 * Es immutable.
 */
class RandomWords extends StatefulWidget {
  /*
   * Se crea el estado que a la vez es el build.
   */
  @override
  State<StatefulWidget> createState() {
    return RandomWorldState();
  }
}

/*
 * La construcción de la clase RandomWords se delega al state
 */
class RandomWorldState extends State<RandomWords> {

  final _biggerFont = const TextStyle(fontSize: 18.0);
  final _suggestions = <WordPair>[]; // _ indica que es una varia privada
  final _saved = Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Canvan - barra de titulo añadir botones etc
      appBar: AppBar(
        title: Text('Welcome to flutter'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0), // margen con el borde
      itemBuilder: (context, index) {

        if (index.isOdd) {
          return Divider();
        }

        if (index >= _suggestions.length) {
          // si alcanza el final de la pantalla
          _suggestions.addAll(generateWordPairs().take(10));
        }

        final i = index ~/ 2;

        return _buildRow(_suggestions[i]);
      },
    );
  }

  Widget _buildRow(WordPair suggestion) {

    final alreadySaved = _saved.contains(suggestion);


    return ListTile(
      title: Text(
        suggestion.asPascalCase,
        style: _biggerFont,
        ),
        trailing: Icon( alreadySaved ? Icons.favorite : Icons.favorite_border,
                    color: alreadySaved ? Colors.red : Colors.redAccent,
                  ),
      onTap: () {
        setState(() {
          if(alreadySaved){
            _saved.remove(suggestion);
          } else {
            _saved.add(suggestion);
          }
        });
      },
    );
  }
}
