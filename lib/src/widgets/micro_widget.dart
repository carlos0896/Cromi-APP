import 'package:flutter/material.dart';

import 'inner_shadow_widget.dart';

class Micro extends StatelessWidget {

  final Color color;

  Micro({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        _createWheel('left'),
        _createWheel('right'),
        Container(
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(-3, 8), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              _bannerBus(),
              _windowBus(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                width: 280.0,
                height: 50.0,
                color: color,
                child: Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          width: 30.0,
                          height: 10.0,
                          margin: EdgeInsets.symmetric(vertical: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.yellowAccent,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.yellowAccent.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset: Offset(0, 0), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset: Offset(0, 0), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Center(
                        child: _patentBus(),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 30.0,
                          height: 10.0,
                          margin: EdgeInsets.symmetric(vertical: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.yellowAccent,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.yellowAccent.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset: Offset(0, 0), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset: Offset(0, 0), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Positioned _createWheel(String position) {
    return Positioned(
      bottom: 0.0,
      left: position == 'left' ? 10.0 : null,
      right: position == 'right' ? 10.0 : null,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          height: 40.0,
          width: 40.0,
          color: Colors.black,
        ),
      ),
    );
  }

  Container _patentBus() {
    return Container(
      width: 150.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Text('LX-GH-94', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),)
      ),
    );
  }

  InnerShadow _windowBus() {
    return InnerShadow(
      blur: 3,
      color: Colors.black,
      offset: const Offset(1, 1),
      child: Container(
        width: 280.0,
        height: 170.0,
        color: Colors.blueGrey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Icon(Icons.pin_drop, color: Colors.white.withOpacity(0.5), size: 60.0,),
              Text('a 1500 metros', style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 20.0),)
            ],
          ),
        ),
      ),
    );
  }

  ClipRRect _bannerBus() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18.0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        width: 280.0,
        height: 40.0,
        color: Colors.black,
        child: Row(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text('I04', style: TextStyle(color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold))
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Llegada estimada',style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold)),
                Text('En menos de 5 minutos.',style: TextStyle(color: Colors.white, fontSize: 10.0)),
              ],
            )
          ],
        ),
      ),
    );
  }
}