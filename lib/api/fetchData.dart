
import 'dart:convert';

import 'package:flutter_web_api/api/models/recipeModel.dart';
import 'package:http/http.dart' as http;


String baseUrl = "http://localhost:1337";
String recipesUrl = baseUrl + "/recipes";

Future <List <RecipeModel>> fetchAllRecipes() async{


  http.Response response =  await http.get(recipesUrl);



  if(response.statusCode == 200){

    List <RecipeModel> recipes = [];

    var body= jsonDecode(response.body);

    for(var recipe in body) {

      recipes.add(RecipeModel.fromJson(recipe));
    }
    return recipes;

  } else{

    print(response.statusCode);
  }
  return null;




}

