import 'package:flutter/material.dart';
import 'package:flutter_web_api/api/fetchData.dart';
import 'package:flutter_web_api/api/models/recipeModel.dart';
import 'package:flutter_web_api/widgets/recipeCardWidget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          FutureBuilder(
            future: fetchAllRecipes(),
              builder: (context,snapchot){


              if(snapchot.hasData){
                List<RecipeModel> recipes = snapchot.data.reversed.toList();

                return Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemCount:recipes.length ,
                    itemBuilder: (context,index){

                      return RecipeCardWidget(recipes[index]);

                  },),
                );
              }

              return CircularProgressIndicator();
          })
        ],

      )
    );
  }
}


