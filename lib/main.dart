import 'package:flutter/material.dart';

import 'app_screens/home.dart';



void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "ExploringUI widgets",
    home: Scaffold(
      appBar: AppBar(title: Text("Long List"),),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            debugPrint("FAB Clicked");
          },
              tooltip: 'Add One More Item',
              child: Icon(Icons.add),
      
      ),
    )

  ));
}

List<String> getListElements(){

  var items = List<String>.generate(1000, (counter) => "item $counter");

  return items;
}

Widget getListView(){
  var listItems = getListElements();

  var listView = ListView.builder(
      itemBuilder: (context, index){

        return ListTile(
          leading: Icon(Icons.arrow_right),
          title: Text(listItems[index]),
          onTap: (){
            showSnackBar(context, listItems[index]);
          },



        );
      }
  );
  return listView;
}

void showSnackBar(BuildContext context, String item){
  
  var snackBar = SnackBar(
    
    content: Text("You just tapped $item"),
    action: SnackBarAction(
        label: 'UNDO',
        onPressed: (){
          debugPrint("Performing dummy UNDO Operation");
        }),
  );
  
  Scaffold.of(context).showSnackBar(snackBar);
}