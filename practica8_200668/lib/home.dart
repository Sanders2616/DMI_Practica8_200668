import 'package:flutter/material.dart';
//import 'package:practica8_200668/common/HttpHandler.dart';
import 'package:practica8_200668/media_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //@override
  //void initState() {
  // super.initState();
  //_loadJson();
  // }

  //_loadJson() async {
  // String data = await HttpHandler().fetchMovies();
  // print(data);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("MovieApp - 200668"),
        backgroundColor: Colors.pink,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children: [
            new DrawerHeader(child: new Material()),
            new ListTile(
              title: new Text("Peliculas"),
              trailing: new Icon(Icons.local_movies),
            ),
            new Divider(
              height: 5.0,
            ),
            new ListTile(
              title: new Text("Televisión"),
              trailing: new Icon(Icons.live_tv_rounded),
            ),
            new Divider(
              height: 5.0,
            ),
            new ListTile(
              title: new Text("Cerrar"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: new PageView(
        children: <Widget>[new MediaList()],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: _obtenerIconos(),
      ),
    );
  }

  List<BottomNavigationBarItem> _obtenerIconos() {
    return [
      new BottomNavigationBarItem(
          icon: new Icon(Icons.thumb_up_alt_rounded), label: "Populares"),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.update_rounded), label: "Próximamente"),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.star_rounded), label: "Mejor valorados"),
    ];
  }
}


//d99d3e6fe5b8d5d7daf95412b5f4b6cb