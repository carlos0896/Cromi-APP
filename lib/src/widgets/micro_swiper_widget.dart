import 'package:cromi/src/utils/hex_color_util.dart';
import 'package:cromi/src/widgets/micro_widget.dart';
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
                      child: Micro(color: HexColor('00A77E'))
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

}

