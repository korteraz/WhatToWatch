import 'package:flutter/material.dart';
import '../models/user.dart';
import '../models/movie.dart';

class Post extends StatelessWidget {
  final User user;
  final Movie movie;

  Post(this.user, this.movie);

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 5,
      child: Column(
        children: <Widget>[
          Container(
            // margin: EdgeInsets.only(top: 10),
            child: ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(user.image),
              ),
              title: Row(
                children: <Widget>[
                  Text(user.name + ' is watching',style: TextStyle(fontSize: 12),),
                  FlatButton(
                    child: Text(movie.name,style: TextStyle(fontSize: 12)),
                    textColor: Colors.purple,
                    onPressed: null,
                  ),
                  Container(
                      width: 40, height: 50, child: Image.asset(movie.image)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
