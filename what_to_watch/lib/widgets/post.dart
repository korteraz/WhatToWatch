import 'package:flutter/material.dart';
import '../models/user.dart';
import '../models/movie.dart';

class Post extends StatelessWidget {
  final User user;
  final Movie movie;
  final String time;

  Post(this.user, this.movie, this.time);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 5),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(user.image),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          user.name + ' is watching ',
                          style: TextStyle(fontSize: 12),
                        ),
                        InkWell(
                          child:
                              Text(movie.name, style: TextStyle(fontSize: 12)),
                          onTap: null,
                        ),
                      ],
                    ),
                    Text(time,
                        style: TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 10)),
                  ],
                ),
              ],
            ),
          ),
          Container(
              width: 40,
              height: 50,
              decoration: BoxDecoration(border: Border.all(color:Colors.grey ,width: 1)),
              alignment: Alignment.centerLeft,
              child: Image.asset(
                movie.image,
              )),
        ],
      ),
    );
  }
}
