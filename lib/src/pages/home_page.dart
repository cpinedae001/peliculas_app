
import 'package:flutter/material.dart';
import 'package:peliculas_app/src/widges/card_swiper_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartelera de peliculas'),
        backgroundColor: Colors.indigoAccent,
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){

            },
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            _swiperTarjetas()
          ],
        ),
      ),
    );
  }

Widget  _swiperTarjetas() {


    return CardSwiper(
      peliculas: [1,2,3,4,5],
    );
}
}

/****
 * SafeArea(
    child: Text('hola mundo')
    )

    este elemento se usa cuando el app puede ajustarce a dispositivos que tiene nouch
 * */
