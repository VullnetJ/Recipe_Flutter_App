import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({ 
    Key? key, 
    required this.recipe 
  }) : super(key: key);

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  // todos: add _sliderVal here
  int _sliderVal = 1; 
  @override
  Widget build(BuildContext context) {
    //1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      //2
      body: SafeArea(
        //3
        child: Column(
          children: [
            //4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image:  AssetImage(widget.recipe.imageUrl),
              ),
            ),
            //5
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.recipe.label, 
              style: const TextStyle(fontSize: 20),
            ),
            // todo: add expanded 
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  // 9
                  // todos add ingredien.quantity

                  return Text(
                    '${ingredient.quanity * _sliderVal}'
                    ' ${ingredient.measure}'
                    ' ${ingredient.name}',                   
                  );
                },
              ),
              
            ),
             Text(
               '$_sliderVal people',
              
            ),
            // todo: add Slider() here. 
            Slider(
              //10
              min: 1,
              max: 10,
              //11
              label: '${_sliderVal * widget.recipe.servings} servings',
              // 12
              value: _sliderVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
             
              // 14
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ),
          ],
        )),
    );
  }
}