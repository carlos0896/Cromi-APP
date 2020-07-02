import 'package:cromi/src/utils/hex_color_util.dart';
import 'package:cromi/src/widgets/inner_shadow_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class MicroSwiper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
                          child: Image(
                image: NetworkImage(
                  'https://wallpaperaccess.com/full/1579892.jpg'
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 60.0),
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                    )
                  ),
                  child: Text(
                    'Buses en camino',
                    style: TextStyle(color: Colors.white ,fontSize: 30.0, fontWeight: FontWeight.bold),
                  )
                ),
                Swiper(
                  itemBuilder: (BuildContext context,int index){
                    return Container(
                      child: _createBus(HexColor('00A77E'))
                    );
                  },
                  itemCount: 6,
                  itemWidth: 300.0,
                  itemHeight: 330.0,
                  
                  layout: SwiperLayout.STACK,
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }

  Widget _createBus(Color color) {

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

