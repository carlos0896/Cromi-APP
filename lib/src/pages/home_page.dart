import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = TextField(
    textInputAction: TextInputAction.go,
    style: TextStyle(
      fontSize: 20.0
    ),
    decoration: InputDecoration(
      hintText: 'N° de paradero',
      hintStyle: TextStyle(color: Colors.grey),
    ),
  );

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cromi'),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: _makeBody()
    );
  }

  Widget _makeBody() {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: cusIcon,
            color: Colors.grey,
            onPressed: () {
              pageController.animateToPage(
                0,
                duration: Duration(milliseconds: 300),
                curve: Curves.linear,
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.history),
            color: Colors.grey,
            onPressed: () {
              pageController.animateToPage(
                1,
                duration: Duration(milliseconds: 300),
                curve: Curves.linear,
              );
            },
          ),
        ],
        title: cusSearchBar,
      ),
      body: _buildPageView(),
    );

  }

  Widget _buildPageView() {
    return PageView(
      controller: pageController,
      scrollDirection: Axis.vertical,
      physics:new NeverScrollableScrollPhysics(),
      children: <Widget>[
        Text('Resultado de busqueda'),
        Text('Historial'),
      ],
    );
  }
}