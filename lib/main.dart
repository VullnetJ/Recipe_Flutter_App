import 'package:flutter/material.dart';
import 'recipe_detail.dart';
import 'recipe.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'Receipe Calculator',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.deepOrangeAccent,
          secondary: Colors.blue,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe List'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            Widget buildRecipeCard(Recipe recipe) {
              return Card(
                // 1
                elevation: 2.0,
                // 2
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                // 3
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  // 4
                  child: Column(
                    children: <Widget>[
                      Image(image: AssetImage(recipe.imageUrl)),
                      // 5
                      const SizedBox(
                        height: 15.0,
                      ),
                      // 6
                      Text(
                        recipe.label,
                        style: const TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Palatino',
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
            //7 Todos, Gesture Detector,
            return GestureDetector(
              // 8
              onTap: () {
                // 9
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10
                      // TODOs Replace return with return RecipeDetail()
                      return RecipeDetail(recipe: Recipe.samples[index]);
                    },
                  ),
                );
              },
              // 11
              child: buildRecipeCard(Recipe.samples[index]),
            );
          },
        ),
      ),
    );
  }
}
