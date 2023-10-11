import 'package:flutter/material.dart';
import 'recipe.dart';
import 'recipe_detail.dart';

class CardRecipe extends StatefulWidget {
  const CardRecipe({super.key, required this.title});
  final String title;
  @override
  CardRecipeState createState() => CardRecipeState();
}

class CardRecipeState extends State<CardRecipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        // TODO: Replace child: Container()
        //child: Container(),
        child: ListView.builder(
          itemCount: Recipe.samples.length,
          itemBuilder: (BuildContext context, int index) {
            // TODO: Update to return Recipe card
            //return Text(Recipe.samples[index].label);
            // TODO: Add GestureDetector
            //return buildRecipeCard(Recipe.samples[index]);
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // TODO: Replace return with return RecipeDetail()
                      //return Text('Detail page');
                      return RecipeDetail(recipe: Recipe.samples[index]);
                    },
                  ),
                );
              },
              child: buildRecipeCard(Recipe.samples[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl)),
            const SizedBox(
              height: 14.0,
            ),
            Text(
              recipe.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            )
          ],
        ),
      ),
    );
  }
}