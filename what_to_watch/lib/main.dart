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
  return new Movie(
      id: 2, name: "Avengers", image: 'assets/images/Avengers.jpg');
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
      body:
          // Center(
          // child:
          Container(
            margin: EdgeInsets.only(top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Post(_currUser, _currMovie,'1 min ago'),
            Divider(),
            Post(newUser(), newMovie(),'10 hours ago'),
          ],
          // ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.movie),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text(''),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text(''),
        ),
      ],
      // currentIndex: 0,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.amber[800],
      onTap: null,
    ),
            // floatingActionButton:
      //  FloatingActionButton(
      //   onPressed: null,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
