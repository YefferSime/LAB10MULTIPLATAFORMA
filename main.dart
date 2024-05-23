import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Pelicula {
  final String titulo;
  final String fecha;
  final String genero;
  final String imagen;
  final String duracion;

  Pelicula({
    required this.titulo,
    required this.fecha,
    required this.genero,
    required this.imagen,
    required this.duracion,
  });
}

class MyApp extends StatelessWidget {
  final List<Pelicula> peliculas = [
    Pelicula(
      titulo: "Sin novedades en el frente",
      fecha: "2022-12-16",
      genero: "Bélico/Acción",
      imagen: "https://pics.filmaffinity.com/Sin_novedad_en_el_frente-474477682-large.jpg",
      duracion: "2h 27m",
    ),
    Pelicula(
      titulo: "Mosul",
      fecha: "2019-03-31",
      genero: "Bélico/Acción",
      imagen: "https://pics.filmaffinity.com/Mosul-634543803-large.jpg",
      duracion: "1h 41m",
    ),
    Pelicula(
      titulo: "Interstellar",
      fecha: "2014-11-07",
      genero: "Sci-Fi",
      imagen: "https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg",
      duracion: "2h 49m",
    ),
    Pelicula(
      titulo: "Castillo de arena",
      fecha: "2017-09-23",
      genero: "Bélico/Acción",
      imagen: "https://pics.filmaffinity.com/Castillo_de_arena-401145921-large.jpg",
      duracion: "1h 53m",
    ),
    Pelicula(
      titulo: "La Batalla de Kamdesh",
      fecha: "2019-09-23",
      genero: "Bélico/Acción",
      imagen: "https://images-na.ssl-images-amazon.com/images/S/pv-target-images/3870a2190481578f9055297bd47aff4c3a4639c41fb3c7dba210aa0b9dd82c9b._RI_TTW_.png",
      duracion: "2h 3m",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mis de Películas Favoritas'),
        ),
        body: ListView.builder(
          itemCount: peliculas.length,
          itemBuilder: (context, index) {
            return PeliculaCard(pelicula: peliculas[index]);
          },
        ),
      ),
    );
  }
}

class PeliculaCard extends StatelessWidget {
  final Pelicula pelicula;

  PeliculaCard({required this.pelicula});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              pelicula.titulo,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Image.network(
                pelicula.imagen,
                height: 500,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text('Fecha: ${pelicula.fecha}'),
            Text('Género: ${pelicula.genero}'),
            Text('Duración: ${pelicula.duracion}'),
          ],
        ),
      ),
    );
  }
}
