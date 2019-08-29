import 'package:flutter/material.dart';
import './widgets/post.dart';
import './models/user.dart';
import './models/movie.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
       home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

User newUser() {
  return new User(id: 2, name: "Samuel", image: 'assets/images/Samuel.jpg');
}

Movie newMovie() {
  return new Movie(id: 2, name: "Avengers", image: 'assets/images/Avengers.jpg');
}

class _MyHomePageState extends State<MyHomePage> {
  User _currUser = new User(id: 1, name: "Raz", image: 'assets/images/Raz.jpg');
  Movie _currMovie =
      new Movie(id: 1, name: "Nemo", image: 'assets/images/Nemo.jpg');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Post(_currUser, _currMovie),
            Post(newUser(), newMovie()),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: null,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
