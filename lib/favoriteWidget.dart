// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget{
  final int  favoriteCount;
  final bool  isFavorited;


  const FavoriteWidget(this.favoriteCount, this.isFavorited);

  _FavoriteWidgetState createState()=>_FavoriteWidgetState();
}


class _FavoriteWidgetState extends State<FavoriteWidget>{
   bool _isFavorited =false;
  int _favoviteCount = 41;
void _toggleFavorite(){
setState(() {
if(_isFavorited){
  _isFavorited=false;
  _favoviteCount-=1;
}
else{
  _isFavorited=true;
  _favoviteCount+=1;
}
});
   }

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        IconButton(onPressed: _toggleFavorite, icon: _isFavorited ? Icon(Icons.favorite) : Icon(Icons.favorite_border),           color: Colors.red,
        ),

        Text('$_favoviteCount')
      ],
    );
  }

}