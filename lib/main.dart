import 'package:flutter/material.dart';
import 'package:flutter_ebooks/screens/book_detail.dart';
import 'package:flutter_ebooks/screens/categories.dart';
import 'package:flutter_ebooks/screens/home_screen.dart';
import 'package:flutter_ebooks/screens/more_books.dart';
import 'package:flutter_ebooks/screens/wishList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity, fontFamily: "Opensans"),
      home: HomePage(),
      routes: {"bookDetail": (_) => BookDetailScreen()},
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [HomeScreen(), CategoryScreen(), WishListScreen(), MoreBooksScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 8.0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star), title: Text('WishList')),
          BottomNavigationBarItem(icon: Icon(Icons.menu), title: Text('More'))
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
