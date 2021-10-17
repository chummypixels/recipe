import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  _RecipeDetailState createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  //TODO: Add _sliderVal here
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),
            SizedBox(height: 4),
            Text(
              widget.recipe.label,
              style: TextStyle(fontSize: 18),
            ),
            //TODO: Add Expanded()
            Expanded(
                child: ListView.builder(
                    itemCount: widget.recipe.ingredients.length,
                    itemBuilder: (BuildContext context, int index) {
                      final ingredient = widget.recipe.ingredients[index];

                      //TODO: Add ingredient quantity
                      return Text(
                          '${ingredient.quantity * _sliderVal} ${ingredient.measure}, ${ingredient.name}');
                    })),

            //TODO: Add Slider() here
            Slider(
              min: 1,
              max: 10,
              divisions: 10,
              label: '${_sliderVal * widget.recipe.servings} servings',
              value: _sliderVal.toDouble(),
              onChanged: (newVal) {
                setState(() {
                  _sliderVal = newVal.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
