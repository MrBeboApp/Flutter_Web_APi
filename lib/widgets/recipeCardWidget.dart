import 'package:flutter/material.dart';
import 'package:flutter_web_api/api/fetchData.dart';
import 'package:flutter_web_api/api/models/recipeModel.dart';

class RecipeCardWidget extends StatelessWidget {
  RecipeModel recipe;

  RecipeCardWidget(this.recipe);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 500,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(baseUrl + recipe.image,width: 200,height: 200,fit: BoxFit.cover,),
              Padding(
                padding: const EdgeInsets.only(top:30.0,left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(recipe.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Icon(Icons.timer,size: 40,),
                        Text(recipe.time + " Min",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      ],),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}