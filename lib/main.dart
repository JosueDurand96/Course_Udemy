import 'package:flutter/material.dart';

main() =>runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Lista de Comida'];

  @override
  Widget  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('HOLA WEY'),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: (){
                  setState(() {
                    _products.add('Avanzado Food tester');
                    print(_products);
                  });

                },
                child: Text('Agregar Producto'),
              ),
            ),
            Column(
              children: _products
              .map(
                (element)=>Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/food.jpg'),
                      Text('Comida Rica xD!'),
                    ],
                  ),
                ),
              )
              .toList(),
            ),


          ],
        ),
      ),
    );
  }
}



//class MyApp extends StatelessWidget {
// @override
//  Widget  build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(
//          title: Center(
//            child: Text('HOLA WEY'),
//          ),
//        ),
//        body: Column(
//            children: <Widget>[
//              Container(
//                margin: EdgeInsets.all(10.0),
//                 child: RaisedButton(
//                    onPressed: (){},
//                    child: Text('Agregar Producto'),
//                  ),
//              ),
//              Card(
//                child: Column(
//                  children: <Widget>[
//                    Image.asset('assets/food.jpg'),
//                    Text('Comida Rica xD!'),
//                  ],
//                ),
//              ),
//
//            ],
//          ),
//      ),
//    );
//  }
//}
