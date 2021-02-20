import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:peliculas_app/src/model/pelicula_model.dart';

class CardSwiper extends StatelessWidget {

  final List<Pelicula> peliculas;

  CardSwiper({@required this.peliculas});

  @override
  Widget build(BuildContext context) {

    /** ancho alto del dispositovo*/
    final _screenSize = MediaQuery.of(context).size;

     return Container(
      padding: EdgeInsets.only(top: 10.0),

      child: Swiper(
        itemBuilder: (BuildContext context,int index){
          return  ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            // child: Image.network("http://via.placeholder.com/350x150",fit: BoxFit.cover,),
            child: FadeInImage(placeholder: AssetImage('assets/img/loading.gif'), image: NetworkImage(peliculas[index].getPosterImg()))
          );
        },
        itemCount: peliculas.length,
        itemWidth: _screenSize.width * .7,
        itemHeight: _screenSize.height  * 0.5,
        // pagination: new SwiperPagination(),
        // control: new SwiperControl(),
        layout: SwiperLayout.STACK,
      ),
    );
  }
}
