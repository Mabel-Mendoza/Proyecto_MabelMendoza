import 'package:flutter/material.dart';

class contador extends StatefulWidget {
const contador({super.key});

  @override
  State<contador> createState() => _contadorState();
}

class _contadorState extends State<contador> {
  int clickcontador = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        ),
      body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text('Cantidad de Clicks'),
          Text(
            '$clickcontador',
          style: TextStyle(fontSize: 150, fontWeight: FontWeight.w100)),

        ],
        ),
      ),

      floatingActionButton: Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
    FloatingActionButton(
      onPressed: () {
        clickcontador++;
        setState(() {});
      },
      child: Icon(Icons.plus_one),
    ),
    SizedBox(height: 10), 

    FloatingActionButton(
      onPressed: () {
        if (clickcontador > 0) {
          clickcontador--;
          setState(() {});
        }
      },
      child: Icon(Icons.exposure_minus_1),
    ),
    SizedBox(height: 10), 

    FloatingActionButton(
      onPressed: () {
        clickcontador = 0;
        setState(() {});
      },
      child: Icon(Icons.refresh),
    ),
  ],
),

    );
    }
}