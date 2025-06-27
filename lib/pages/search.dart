
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class searchRestaurant extends StatelessWidget{
  const searchRestaurant({super.key});

  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, 
        icon: Icon(Icons.arrow_back_ios,
        color: Colors.black,
        size: 20,
        )
        )
      ),
    );
  }
}