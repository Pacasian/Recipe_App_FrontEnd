import 'package:flutter/material.dart';
import 'package:recipe/bloc/recipe_list_bloc.dart';
import 'package:recipe/model/model.dart';

class Active extends StatefulWidget {
  const Active({Key? key}) : super(key: key);

  @override
  _ActiveState createState() => _ActiveState();
}

class _ActiveState extends State<Active> {
  final myBloc = RecipeListBloc();

  @override
  void initState() {
    myBloc.eventSink.add(RecipeAction.fetch);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: StreamBuilder<List<RecipeModel>>(
            stream: myBloc.recipeStream,
            builder: (context, snapshot) {
              if (snapshot.data != null) {
                return ListView.builder(
                  itemBuilder: (context, index) => Text(index.toString()),
                  itemCount: snapshot.data!.length,
                );
              }
              return Center(
                child: Text("null error"),
              );
            }),
      ),
    );
  }
}
