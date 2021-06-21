import 'dart:async';
import 'dart:convert';

import 'package:recipe/model/model.dart';
import 'package:http/http.dart' as http;

enum RecipeAction { fetch, delete }

class RecipeListBloc {
  final _stateStreamController = StreamController<List<RecipeModel>>();
  StreamSink<List<RecipeModel>> get recipeSink => _stateStreamController.sink;
  Stream<List<RecipeModel>> get recipeStream => _stateStreamController.stream;

  final eventStreamController = StreamController<RecipeAction>();
  StreamSink<RecipeAction> get eventSink => eventStreamController.sink;
  Stream<RecipeAction> get eventStream => eventStreamController.stream;

  RecipeListBloc() {
    eventStream.listen((event) async {
      if (event == RecipeAction.fetch) {
        try {
          var recipe = await getRecipes();
          if (recipe != null) {
            recipeSink.add(recipe);
          }
        } on Exception catch (e) {
          recipeSink.addError('error');
        }
      } else if (event == RecipeAction.delete) {}
    });
  }

  Future<List<RecipeModel>> getRecipes() async {
    var response = await http.get(Uri.parse('http://192.168.1.102:3000/api/v1/recipe'));
    // print("dfdf${response.statusCode}");
    var jsonString = response.body;
    // print(jsonString);
    return recipeModelFromJson(jsonString);
  }
}
