import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class MicroSwiper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            child: Text(
              'Buses en camino',
              style: TextStyle(color: Colors.grey ,fontSize: 20.0, fontWeight: FontWeight.bold),
            )
          ),
          Swiper(
            itemBuilder: (BuildContext context,int index){
              return Center(
                child: Container(
                  child: _createBus()
                ),
              );
            },
            itemCount: 6,
            itemWidth: 300.0,
            itemHeight: 300.0,
            layout: SwiperLayout.STACK,
          ),
        ]
      ),
    );
  }

  Widget _createBus() {

    return Stack(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            width: 300.0,
            height: 300.0,
            color: Colors.redAccent,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  width: 280.0,
                  height: 40.0,
                  color: Colors.black,
                ),
                Container(
                  width: 280.0,
                  height: 170.0,
                  color: Colors.blueGrey,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  width: 280.0,
                  height: 50.0,
                  color: Colors.redAccent,
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              width: 30.0,
                              height: 10.0,
                              margin: EdgeInsets.symmetric(vertical: 5.0),
                              color: Colors.yellowAccent,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Container(
                              width: 30.0,
                              height: 30.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Container(
                              width: 150.0,
                              height: 40.0,
                              color: Colors.white,
                              child: Center(
                                child: Text('LX-GH-94', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              width: 30.0,
                              height: 10.0,
                              margin: EdgeInsets.symmetric(vertical: 5.0),
                              color: Colors.yellowAccent,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Container(
                              width: 30.0,
                              height: 30.0,
                              color: Colors.white,
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
        )
      ],
    );

  }
}