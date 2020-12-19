class RecipeModel{
  int id;
  String title,time,description,image;

  RecipeModel(this.id, this.title, this.time, this.description, this.image);

  RecipeModel.fromJson(Map<String,dynamic>map){

    this.id = map["id"];
    this.title = map["title"];
    this.time = map["time"];
    this.description = map["description"];
    this.image = map["image"]["url"];

  }


}