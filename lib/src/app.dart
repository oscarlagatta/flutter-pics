// Import flutter helper library
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

// BREAK THE WIDGET INTO TWO SEPARATE CLASSES
class App extends StatefulWidget {
  // ADD A createState method that returns an instance of 
  // widget state
  createState() {
    return AppState();
  }
}

// ADD A BUILD METHOD TO THE WIDGET STATE CLASS
class AppState extends State<App> {

  // ADD SOME INSTANCES VARIABLE TO THE WIDGET STATE CLASS
  // that represent the data that change over time
  int counter = 0;

// http://jsonplaceholder.typicode.com/photos/1000
  void fetchImage() {        
    
    counter += 1;
    get('http://jsonplaceholder.typicode.com/photos/$counter');
    
    setState(() {
      counter += 1; 
    });
    
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton( 
          
          child: Icon(Icons.add),
          onPressed: fetchImage,
          ),
        appBar: AppBar( 
          title: Text('Let\'s see some Images'),),
        ),
    );
  }
}

