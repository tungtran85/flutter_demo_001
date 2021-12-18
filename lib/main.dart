import 'package:flutter/material.dart';

void main(){
  runApp (
   MaterialApp(
     title: "Little 001 App",
     home: MyScaffold(),
   )
  );
}

class MyScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text("Example Title",
              style: Theme.of(context).primaryTextTheme.subtitle1,
            ),
            ),
          Expanded(
            child: Center(
              child: Text('Hello word 001'),
            ),
          )
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {

  MyAppBar({required this.title});

  final Widget title ;
  @override
  Widget build(BuildContext context)
  {
    //TODO: implement build
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue),
      child: Row(
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.menu),
              tooltip: "Navigation menu",
              onPressed: null,
          ),
          Expanded(
           child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "Search",
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

