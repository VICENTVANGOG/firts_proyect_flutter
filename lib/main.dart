import 'package:flutter/material.dart';



//cada objeto de la app se llama widget y depediendo el que necesitemos asi mismo sera su llamado 
void main() => runApp(MiApp());     //primero creamos la clase que se ejecutara al iniciar la app  llamando al primer widget que se ejecutara al iniciar la app

class MiApp extends StatelessWidget {    //creamos la clase que hereda de StatelessWidget  

  const MiApp({Key? key}) : super(key: key); 

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "mi app",
      home: Inicio(),  //aqui lo que hacemos es llamar a la clase que creamos en la parte de abajo en donde rellenamos la informacion
    );
  }
}

class Inicio extends StatefulWidget {
// aqui lo que hacemos es crear el contenido de lq pagina apartid de statefulwidgets que significa esto que podemos cambiar el contenido de la pagina apartir de aqui 
  const Inicio({Key? key}) : super(key: key); 

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("mi first app"),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH4yzol-cbGKjGxhrze-mj2CiJCBISR-42cQ&s"),
          ),
          Container(
            
            padding: EdgeInsets.all(20.0),
            
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH4yzol-cbGKjGxhrze-mj2CiJCBISR-42cQ&s"),
          ),
        ],
      )  //lo que hacemos con este container  es directamente crear el div que esta metiendo por dentro la imagen 
    );
  }
}
