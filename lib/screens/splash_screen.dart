import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // crea el elemento que se necesita
  State<SplashScreen> createState() => _SplashScreenState();
}

// dentro de la clase se pone el apartado de los dise;os
class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      // Material tiene un unico hijo
      child: Container(
        height: MediaQuery.of(context).size.height, // Establecemos la altura
        width: MediaQuery.of(context).size.width, // Establecemos el ancho
        decoration: BoxDecoration(
          color: Colors.black, // se usa mayuscula por que llamamos al paquete Colors
          image: DecorationImage(
            image: AssetImage("../images/empanada.png"), // llamamos a la imagen dentro de la carpeta images
            fit: BoxFit.cover, // La imagen cubrira el area
            opacity: 0.4, // Opacidad para la imagen semi transferencia
          ),
        ),
        // Column ya puede tener contener a varios
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Alineacion de los elementos
          // Children es lo que contiene los hijos de Column
          children: [
            Icon(Icons.shopping_bag_rounded,
              size: 250,
              color: Colors.white70,
            ),
            Text(
              "Shopping Empanada",
              style: TextStyle(
                color: Colors.red,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
